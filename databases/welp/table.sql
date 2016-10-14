-- CREATE TABLE businesses(
--   -- id INTEGER PRIMARY KEY,
-- --   name VARCHAR(255)
-- );

-- CREATE TABLE ussers(
-- --   id INTEGER PRIMARY KEY,
-- --   firstName VARCHAR(255),
-- --   lastName VARCHAR(255)

-- );

-- CREATE TABLE reviews (
--   id INTEGER PRIMARY KEY,
--   stars INT,
--   comment VARCHAR(255),
--   business_id INT,
--   ussers_id INT,
--   FOREIGN KEY(business_id) REFERENCES businesses(id),
--   FOREIGN KEY(ussers_id) REFERENCES ussers(id)
-- );

-- INSERT INTO businesses(name) VALUES ("Amir's Towing");
-- INSERT INTO businesses(name) VALUES ("The Beagle Nightclub");
-- INSERT INTO businesses(name) VALUES ("Lotus Yoga");

-- INSERT INTO ussers(firstName,lastName) VALUES ("Bradford","Pitt");
-- INSERT INTO ussers(firstName,lastName) VALUES ("Mandy","Kaling");
-- INSERT INTO ussers(firstName,lastName) VALUES ("Angela","Jolie");

-- INSERT INTO reviews(stars,comment,business_id,ussers_id) VALUES (5,"Great Food",1,1);
-- INSERT INTO reviews(stars,comment,business_id,ussers_id) VALUES (3,"OK Food",1,3);
-- INSERT INTO reviews(stars,comment,business_id,ussers_id) VALUES (1,"Bad Food",2,2);