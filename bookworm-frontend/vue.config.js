module.exports = {
    devServer: {
        port: 3000,
        proxy: {
            '/api/*': {
                target: 'http://localhost:8080'
            }
        }
    },
    // Change build paths to make them Maven compatible
    // see https://cli.vuejs.org/config/
    outputDir: 'target/dist',
    assetsDir: 'static'
}