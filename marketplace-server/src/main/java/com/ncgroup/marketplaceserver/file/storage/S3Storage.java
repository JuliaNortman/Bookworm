package com.ncgroup.marketplaceserver.file.storage;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.InputStream;
import java.util.Map;

@Component
@Slf4j
public class S3Storage implements CloudStorage {

    @Value("${aws.bucket.name}")
    private String bucketName;

    @Value("${aws.bucket.region}")
    private String bucketRegion;

    private AmazonS3 amazonS3;

    @Autowired
    public S3Storage(AmazonS3 amazonS3) {
        this.amazonS3 = amazonS3;
    }

    @Override
    public void upload(String filepath, InputStream is, Map<String, String> metadata) {
        ObjectMetadata objectMetadata = new ObjectMetadata();
        metadata.forEach(objectMetadata::addUserMetadata);
        try {
            amazonS3.putObject(new PutObjectRequest( bucketName, filepath, is, objectMetadata)
                    .withCannedAcl(CannedAccessControlList.PublicRead));
            //amazonS3.putObject(bucketName, filepath, is, objectMetadata);
            //s3client.putObject(new PutObjectRequest(bucketName, keyName, file).withCannedAcl(CannedAccessControlList.PublicRead));
        } catch (AmazonServiceException e) {
            throw new IllegalStateException("Failed to upload the file", e);
        }
    }

    @Override
    public void delete(String filepath) {

        try {
            amazonS3.deleteObject(bucketName, filepath);
        } catch (AmazonServiceException e) {
            throw new IllegalStateException("Failed to upload the file", e);
        }
    }

    @Override
    public void copy(String filepathFrom, String filepathTo) {
        try {
            amazonS3.copyObject(
                    new CopyObjectRequest( bucketName,
                            filepathFrom,
                            bucketName,
                            filepathTo)
                            .withCannedAccessControlList(CannedAccessControlList.PublicRead)
                    /*bucketName,
                    filepathFrom,
                    bucketName,
                    filepathTo*/
            );
        } catch (AmazonServiceException e) {
            throw new IllegalStateException("Failed to move the file", e);
        }
    }

    @Override
    public String getResourceUrl(String filepath) {
        if (filepath == null || filepath.isEmpty()) {
            return "";
        }
        log.info("Resource url: " + String.format("https://%s.s3.%s.amazonaws.com/%s", bucketName, bucketRegion, filepath));
        return String.format("https://%s.s3.%s.amazonaws.com/%s", bucketName, bucketRegion, filepath);
    }
}
