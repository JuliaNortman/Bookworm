INSERT INTO role (role)
VALUES ('ROLE_USER'),
       ('ROLE_ADMIN'),
       ('ROLE_COURIER'),
       ('ROLE_PRODUCT_MANAGER');

INSERT INTO firm(name)
VALUES ('Jean Lee Hunt'),
       ('George Herbert Betts'),
       ('Wilkie Collins'),
       ('Bram Stoker'),
       ('Alice Perrin'),
       ('Granville Baker'),
       ('Mrs. Bury Palliser'),
       ('R. V. Russell'),
       ('Faxian'),
       ('Maurice Leblanc'),
       ('John Buchan'),
       ('H. Byerley Thomson'),
       ('John Cordy Jeaffreson'),
       ('T. A. Lacey'),
       ('Walter Bagehot'),
       ('F. Haverfield'),
       ('Jesse Walter Fewkes'),
       ('G. Maspero');

INSERT INTO category(name)
VALUES ('Education'),
       ('Fiction'),
       ('Geography'),
       ('Crime'),
       ('Law'),
       ('Social Science'),
       ('History');

INSERT INTO product(name, category_id)
values ('A Catalogue of Play Equipment', 1), --1
       ('The Mind and Its Education', 1),    --2
       ('The Moonstone', 2),                 --3
       ('Dracula', 2),                       --4
       ('Star of India', 2),                 --5
       ('From a Terrace in Prague', 3),      --6
       ('Brittany & Its Byways', 3),         --7
       ('The Tribes and Castes of the Central Provinces of India', 3),                 --8
       ('A Record of Buddhistic Kingdoms', 3),               --9
       ('The Crystal Stopper', 4),                  --10
       ('The Teeth of the Tiger', 4),          --11
       ('Greenmantle', 4),                 --12
       ('The Woman in White', 4),                --13
       ('The Laws of War, Affecting Commerce and Shipping', 5),       --14
       ('A Book About Lawyers', 5),              --15
       ('The Acts of Uniformity: Their Scope and Effect', 5),                 --16
       ('The English Constitution', 5), --17
       ('Roman Britain in 1914', 6),        --18
       ('Archeological Expedition to Arizona in 1895', 6),      --19
       ('L''archéologie égyptienne', 6); --20

INSERT INTO goods(prod_id, firm_id, price, unit, discount,
                  shipping_date, in_stock, status, image, description, quantity)
values (1, 1, 20, 'ITEM', 50, NOW(), true, true, 'media/CatalogOfPlayEquipment.jpg',
        'This work has been selected by scholars as being culturally important, and is part of the knowledge base of civilization as we know it. This work was reproduced from the original artifact, and remains as true to the original work as possible. Therefore, you will see the original copyright references, library stamps (as most of these works have been housed in our most important libraries around the world), and other notations in the work.',
        20),
       (2, 2, 43, 'ITEM', 10, NOW(), true, true, 'media/MindAndEducation.jpg',
        'The mind quality determines one''s capacity in life and profession. The great and efficient mind is not born, it is acquired by training and practice. This book is about the mind and its training. It teaches various cognitive functions and the methods of developing each function. The book covers many subjects of the mind, including the brain and nervous system, consciousness, attention, habit, sensation, perception, images, ideas, imagination, association, memory, thinking, instinct, feeling, emotion, interest, the will and self expression, etc. The book is easy to read and understand with many illustrations and concrete examples. The mind skills taught in this book are useful not only in studying or teaching, but also in business or profession.',
        150),
       (3, 3, 19, 'ITEM', 2, NOW(), true, true, 'media/TheMoonStone.jpg',
        'The Moonstone, a yellow diamond looted from an Indian temple and believed to bring bad luck to its owner, is bequeathed to Rachel Verinder on her eighteenth birthday. That very night the priceless stone is stolen again and when Sergeant Cuff is brought in to investigate the crime, he soon realizes that no one in Rachel’s household is above suspicion. Hailed by T. S. Eliot as "the first, the longest, and the best of modern English detective novels," The Moonstone is a marvellously taut and intricate tale of mystery, in which facts and memory can prove treacherous and not everyone is as they first appear.',
        50),
       (4, 4, 85, 'ITEM', 12, NOW(), true, true, 'media/Dracula.jpg',
        'During a business visit to Count Dracula''s castle in Transylvania, a young English solicitor finds himself at the center of a series of horrifying incidents. Jonathan Harker is attacked by three phantom women, observes the Count''s transformation from human to bat form, and discovers puncture wounds on his own neck that seem to have been made by teeth. Harker returns home upon his escape from Dracula''s grim fortress, but a friend''s strange malady — involving sleepwalking, inexplicable blood loss, and mysterious throat wounds — initiates a frantic vampire hunt. The popularity of Bram Stoker''s 1897 horror romance is as deathless as any vampire. Its supernatural appeal has spawned a host of film and stage adaptations, and more than a century after its initial publication, it continues to hold readers spellbound.',
        43),
       (5, 5, 30, 'ITEM', 2, NOW(), true, true, 'media/StarOfIndia.jpg.jpg',
        '"Star of India" by Alice Perrin. Published by Good Press. Good Press publishes a wide range of titles that encompasses every genre. From well-known classics & literary fiction and non-fiction to forgotten−or yet undiscovered gems−of world literature, we issue the books that need to be read. Each Good Press edition has been meticulously edited and formatted to boost readability for all e-readers and devices. Our goal is to produce eBooks that are user-friendly and accessible to everyone in a high-quality digital format.',
        67),
       (6, 6, 70, 'ITEM', 1, NOW(), true, true, 'media/TerraceInPrague.jpg',
        'HE Psalmist once declared in a burst of enthusiasm, no doubt justified, that "Jerusalem is a city that is at unity in itself." This remark applies with equal right to other great historic cities, as who can deny it that has stood in the "Place de l''Opéra" and felt that Paris is indeed at unity in itself?... Or who that has looked upon Constantinople rising out of the pearly depths of the Sea of Marmora will fail to realize that the city of Constantine, despite its many vicissitudes, was indeed a united whole fulfilling its sometime tragic destiny in the history of mankind? Lisbon, mirrored in the broad waters of the Tagus, is another such city, and so, in yet more marked degree, is Prague. The Psalmist, in poetic exuberance, may appear to have overstated the case, allowance must be made for him, but in the main he was right. The city of Zion had grown up at the feet of the temple of David, and its massive strength impressed the poet who overlooked the bickerings, the quarrels, of the "dwellers therein"; he knew his city was the centre of his race, for "thither the tribes go up," and he took in only the big enduring things; he held the key to the soul of the city.',
        30),
       (7, 7, 9.99, 'ITEM', 9, NOW(), true, true, 'media/Brittany.jpg',
        '"sa mort fut le soir d''un beau jour." in the centre of the mausoleum is the vault containing the bones, and over it a sarcophagus on a pedestal, upon which are inscribed the names of the victims. on the sarcophagus are busts of sombreuil and the other chiefs of the expedition; and a profile of monseigneur d''herce, bishop of dol, one of the victims. of the bas-reliefs on the mausoleum, one represents the heroic act of gesril du papeu, with the words "i hoped in god, and shall not be afraid;" the other, the landing of the emigrants on the shore of carnac, with "all my brothers are [pg 168] dead for israel;"-these inscriptions are all in latin. others are round the monument:-"unworthily slai',
        150),
       (8, 8, 29.95, 'ITEM', 9, NOW(), true, true, 'media/TribesAndCastes.jpg',
        'This book is the result of the arrangement made by the Government of India, on the suggestion of the late Sir Herbert Risley, for the preparation of an ethnological account dealing with the inhabitants of each of the principal Provinces of India. The work for the Central Provinces was entrusted to the author, and its preparation, undertaken in addition to ordinary official duties, has been spread over a number of years. The prescribed plan was that a separate account should be written of each of the principal tribes and castes, according to the method adopted in Sir Herbert Risley’s Tribes and Castes of Bengal. This was considered to be desirable as the book is intended primarily as a work of reference for the officers of Government, who may desire to know something of the customs of the people among whom their work lies. It has the disadvantage of involving a large amount of repetition of the same or very similar statements about different castes, and the result is likely therefore to be somewhat distasteful to the ordinary reader. On the other hand, there is no doubt that this method of treatment, if conscientiously followed out, will produce more exhaustive results than a general account. Similar works for some other Provinces have already appeared, as Mr. W. Crooke’s Castes and Tribes of the North-Western Provinces and Oudh, Mr. Edgar Thurston’s Castes and Tribes of Southern India, and Mr. Ananta Krishna Iyer’s volumes on Cochin, while a Glossary for the Punjab by Mr. H.A. Rose has been partly published. The articles on Religions and Sects were not in the original scheme of the work, but have been subsequently added as being necessary to render it a complete ethnological account of the population. In several instances the adherents of the religion or sect are found only in very small numbers in the Province, and the articles have been compiled from standard works.',
        86),
       (9, 9, 23.99, 'ITEM', 9, NOW(), true, true, 'media/BuddhisticKingdoms.jpg',
        'Translated by Herbert Allen Giles. This Elibron Classics book is a facsimile reprint of a 1877 edition by Trübner & Co; Kelly & Walsh, London-Shanghai.',
        78),
       (10, 10, 7.37, 'ITEM', 9, NOW(), true, true, 'media/CrystalStopper.jpg',
        'The Crystal Stopper is a mystery novel by Maurice Leblanc featuring the adventures of the gentleman thief Arsène Lupin. The novel appeared in serial form in the French newspaper Le Journal from September to November 1912 and was released as a novel subsequently. Maurice Leblanc was inspired by the infamous Panama scandals of 1892 and 1893. The novel borrows from Edgar Allan Poe''s short story The Purloined Letter the idea of hiding an object in plain sight.',
        67),
       (11, 10, 23.20, 'ITEM', 9, NOW(), true, true, 'media/TeethOfTiger.jpg',
        'It was half-past four; M. Desmalions, the Prefect of Police, was not yet back at the office. His private secretary laid on the desk a bundle of letters and reports which he had annotated for his chief, rang the bell and said to the messenger who entered by the main door:"Monsieur le Préfet has sent for a number of people to see him at five o''clock. Here are their names. Show them into separate waiting-rooms, so that they can''t communicate with one another, and let me have their cards when they come."The messenger went out. The secretary was turning toward the small door that led to his room, when the main door opened once more and admitted a man who stopped and leaned swaying over the back of a chair.',
        67),
       (12, 11, 11.56, 'ITEM', 9, NOW(), true, true, 'media/Greenmantle.jpg',
        'With an introduction by Christopher Hitchens. Richard Hannay is tasked to investigate rumours of an uprising in the Muslim world and takes off on a hair-raising journey through German-occupied Europe to meet up with his old friend Sandy Arbuthnot in Constantinople, where they must thwart the Germans'' plans to use religion to help them win the war. Set during World War I, Greenmantle is a controversial meditation on the power of political Islam.',
        90),
       (13, 3, 11.99, 'ITEM', 9, NOW(), true, true, 'media/WomanInWhite.jpg',
        'Published in 1859, we are immediately intrigued by the narrative - a young and genial tutor of arts, Walter Hartright, encounters a woman dressed head to toe in white who is lost in the streets of London. After reporting her to the authorities Walter is informed that the lady was an escapee from a mental asylum.

However, when Walter takes a new position in teaching art he encounters a girl named Laura, whose looks are stunningly similar to those of the woman in white. As the pair fall for one another, the sense of mystery deepens - is there more to their meeting than first meets the eye?

Lauded for its innovative and compelling plot and use of multiple characters in narration, The Woman in White is one of the earliest examples of detective fiction. Throughout his quest for the truth, Walter hires a number of private detectives and eventually mimics their methodology, with Collins'' legal know-how lending realism to the plot line. Wilkie Collins was strongly motivated to author her novel by the unequal situation men and women found themselves: at the time, the law overtly deferred to men in matters of inheritance and estate.

The book''s legacy is towering and significant: in the modern day The Woman in White continues to be voted and rated among the greatest novels ever published by surveys such as the BBC''s Big Read and by newspapers such as The Observer. This edition holds the complete text, without abridgement.',
        90),
       (14, 12, 16.79, 'ITEM', 9, NOW(), true, true, 'media/LawsOfWar.jpg',
        '2021 Independent Publisher Book Awards, Gold Medal Winner
2020-21 Reader Views Literary Awards Gold Medal Winner
2020 American Book Fest Best Book Awards Finalist in the U.S. History category
2020 National Jewish Book Award Finalist in American Jewish Studies
2020 Foreword Indies Book of the Year Finalist ',
        148),
       (15, 13, 28.95, 'ITEM', 9, NOW(), true, true, 'media/BookAboutLawyers.jpg', 'This is a reproduction of a classic text optimised for kindle devices. We have endeavoured to create this version as close to the original artefact as possible. Although occasionally there may be certain imperfections with these old texts, we believe they deserve to be made available for future generations to enjoy.', 54),
       (16, 14, 19.95, 'ITEM', 9, NOW(), true, true, 'media/ActsOfUniformity.jpeg', 'This book was converted from its physical edition to the digital format by a community of volunteers. You may find it for free on the web. Purchase of the Kindle edition includes wireless delivery.', 54),
       (17, 15, 13.95, 'ITEM', 9, NOW(), true, true, 'media/EnglishConstitution.jpg',
        'Walter Bagehot''s The English Constitution (1867) is the best account of the history and workings of the British political system ever written. As arguments raged in mid-Victorian Britain about giving the working man the vote, and democracies overseas were pitched into despotism and civil war,
Bagehot took a long, cool look at the "dignified" and "efficient" elements which made the English system the envy of the world. His analysis of the monarchy, the role of the prime minister and cabinet, and comparisons with the American presidential system are astute and timeless, pertinent to
current discussions surrounding devolution and electoral reform. Combining the wit and panache of a journalist with the wisdom of a man of letters steeped in evolutionary ideas and historical knowledge, Bagehot produced a book which is always thoughtful, often funny, and surprisingly
entertaining.This edition reproduces Bagehot''s original 1867 work in full, and introduces the reader to the dramatic political events that surrounded its publication.',
        148),
       (18, 16, 41.65, 'ITEM', 9, NOW(), true, true, 'media/RomanBritain.jpg',
        'Leather Binding on Spine and Corners with Golden Leaf Printing on round Spine (extra customization on request like complete leather, Golden Screen printing in Front, Color Leather, Colored book etc.) Reprinted in 2019 with the help of original edition published long back [1915]. This book is printed in black & white, sewing binding for longer life, Printed on high quality Paper, re-sized as per Current standards, professionally processed without changing its contents. As these are old books, we processed each page manually and make them readable but in some cases some pages which are blur or missing or black spots. If it is multi volume set, then it is only single volume, if you wish to order a specific or all the volumes you may contact us. We expect that you will understand our compulsion in these books.',
        148),
       (19, 17, 34.99, 'ITEM', 9, NOW(), true, true, 'media/ExpeditionToArizona.jpg',
        'This book is part of the TREDITION CLASSICS series. The creators of this series are united by passion for literature and driven by the intention of making all public domain books available in printed format again - worldwide. At tredition we believe that a great book never goes out of style. Several mostly non-profit literature projects provide content to tredition. To support their good work, tredition donates a portion of the proceeds from each sold copy. As a reader of a TREDITION CLASSICS book, you support our mission to save many of the amazing works of world literature from oblivion.',
        148),
       (20, 18, 90.03, 'ITEM', 9, NOW(), true, true, 'media/French.jpg',
        '"L''archéologie égyptienne", de G. Maspero. Publié par Good Press. Good Press publie un large éventail d''ouvrages, où sont inclus tous les genres littéraires. Les choix éditoriaux des éditions Good Press ne se limitent pas aux grands classiques, à la fiction et à la non-fiction littéraire. Ils englobent également les trésors, oubliés ou à découvrir, de la littérature mondiale. Nous publions les livres qu''il faut avoir lu. Chaque ouvrage publié par Good Press a été édité et mis en forme avec soin, afin d''optimiser le confort de lecture, sur liseuse ou tablette. Notre mission est d''élaborer des e-books faciles à utiliser, accessibles au plus grand nombre, dans un format numérique de qualité supérieure.',
        148);



