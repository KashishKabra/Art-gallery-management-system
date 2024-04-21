CREATE DATABASE IF NOT EXISTS ArtGalleryDatabase;
USE ArtGalleryDatabase;

CREATE TABLE IF NOT EXISTS users (
  userid INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  
  type VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS gallery (
  gid VARCHAR(26) PRIMARY KEY,
  gname VARCHAR(100) NOT NULL,
  location VARCHAR(100) NOT NULL,
  contact VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS artist (
  artistid VARCHAR(20) PRIMARY KEY,
  aname VARCHAR(50) NOT NULL ,
  userid int,
  FOREIGN KEY (userid) REFERENCES users(userid)
);
CREATE TABLE IF NOT EXISTS customer (
  custid VARCHAR(20) PRIMARY KEY,
  name VARCHAR(50),
  address CHAR(25),
  userid int,
  FOREIGN KEY (userid) REFERENCES users(userid)
);
CREATE TABLE IF NOT EXISTS artwork (
  artid VARCHAR(20) PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  year VARCHAR(5) DEFAULT NULL,
  type_of_art VARCHAR(20) NOT NULL,
  size VARCHAR(50) NOT NULL,
  price INT NOT NULL,
  images varchar(450) NOT NULL,
  artistid VARCHAR(20),
  FOREIGN KEY (artistid) REFERENCES artist(artistid),
  gid VARCHAR(20),
  FOREIGN KEY (gid) REFERENCES gallery(gid)
);


CREATE TABLE IF NOT EXISTS exhibition (
  eid VARCHAR(20) PRIMARY KEY,
  startdate DATE NOT NULL,
  enddate DATE NOT NULL,
  gid VARCHAR(20) ,
  FOREIGN KEY (gid) REFERENCES gallery(gid)
);
CREATE TABLE IF NOT EXISTS buys_artwork (
  transactionid INT AUTO_INCREMENT PRIMARY KEY,
  transaction_date DATE NOT NULL,
  transaction_time TIME NOT NULL,
  amount INT NOT NULL,
  custid VARCHAR(20),
  artid VARCHAR(20),
  FOREIGN KEY (custid) REFERENCES customer(custid),
  FOREIGN KEY (artid) REFERENCES artwork(artid)
);

CREATE TABLE IF NOT EXISTS feedback (
  feedbackid INT AUTO_INCREMENT PRIMARY KEY,
  comment VARCHAR(255),
  rating INT,
  userid INT,
  FOREIGN KEY (userid) REFERENCES users(userid)
);
 



-- Inserting data into the users table
INSERT INTO users (username, password, email, type) VALUES
('akash_gupta', 'ag123', 'akash_gupta@example.com', 'Customer'),
('priya_sharma', 'ps123', 'priya_sharma@example.com','Customer'),
('vikram_singh', 'vs123', 'vikram_singh@example.com', 'Customer'),
('neha_patel', 'np123', 'neha_patel@example.com', 'Customer'),
('sandeep_yadav', 'sy123', 'sandeep_yadav@example.com', 'Customer'),
('poonam_joshi', 'pj123', 'poonam_joshi@example.com', 'Customer'),
('anil_kumar', 'ak123', 'anil_kumar@example.com','Customer'),
('nisha_shah', 'ns123', 'nisha_shah@example.com','Customer'),
('ananya_verma', 'av123', 'ananya_verma@example.com','Customer'),
('rahul_kumar', 'rk123', 'rahul_kumar@example.com','Customer'),
('vinita_sadarangani', 'vs123', 'vinita_sadarangani@example.com','Artist'),
('mahesh_karambele', 'mk123', 'mahesh_karambele@example.com','Artist'),
('bharti_ambi', 'ba123', 'bharti_ambi@example.com','Artist'),
('ganesh_panda', 'gp123', 'ganesh_panda@example.com','Artist'),
('smrita_swarup', 'ss123', 'smrita_swarup@example.com','Artist'),
('m_ishaq', 'mi123', 'm_ishaq@example.com','Artist');


-- Inserting data into the artist table
INSERT INTO artist (artistid, aname, userid) VALUES
('A1', 'Vinita Sadarangani', 11),
('A2',  'Mahesh Karambele', 12),
('A3',  'Bharti Ambi', 13),
('A4',  'Ganesh Panda', 14),
('A5', 'Smrita Swarup', 15),
('A6', 'M Ishaq', 16),
('A7',  'Rahul Kumar', 9),
('A8',  'Ananya Verma', 10);
INSERT INTO gallery (gid, gname, location, contact ) VALUES
('G1', 'Birla Academy of Art & Culture', 'Kolkata', '9856434545'),
('G2', 'National Gallery of Modern Art','Pune' ,'9765847545' ),
('G3', 'Venkatappa Art Gallery', 'Mumbai', '9080706050'),
('G4', 'Gallery Sumukha', 'Delhi', '8070605040'),
('G5', 'Karnataka Chitrakala Parishath', 'Bangalore', '978675645');
-- Inserting data into the artwork table
INSERT INTO artwork (artid, title, year, type_of_art, size, price,images, artistid,  gid) VALUES
('AW1', 'Mystery', '2010', 'Landscape', '40 x 50 inches', 175000, '/images/vinita1.jpeg','A1', 'G1'),
('AW24', 'Wilderness', '2019', 'Landscape', '24 X 30 inches', 60000,'/images/vinita2.jpeg', 'A1', 'G1'),
('AW56', 'Feelings', '2022', 'Abstract', '36 x 48 inches', 185000,'/images/mahesh1.jpeg', 'A2', 'G3'),
('AW45', 'Memories', '2020', 'Abstract', '30 x 54 inches', 190000,'/images/mahesh1.jpeg', 'A2', 'G4'),
('AW23', 'Flowers', '2018', 'Landscape', '24 x 24 inches', 18000, '/images/bharti1.jpeg','A3', 'G2'),
('AW90', 'Path Ahead', '2020', 'Landscape', '46 x 36 inches', 80000, '/images/ganesh1.jpeg','A4', 'G2'),
('AW65', 'Rainbow', '2023', 'Abstract', '30 x 48 inches', 125000,'/images/smrita1.jpeg', 'A5', 'G5'),
('AW76', 'Sunlight', '2022', 'Landscape', '30 x 30 inches', 140000,'/images/mishaq1.jpeg', 'A6', 'G1'),
('AW77', 'Moonlight', '2023', 'Abstract', '36 x 36 inches', 150000, '/images/rahuk1.jpeg','A7', 'G5'),
('AW78', 'Starlight', '2023', 'Landscape', '24 x 48 inches', 130000,'/images/ananya1.jpeg', 'A8', 'G4');

-- Inserting data into the gallery table



-- Inserting data into the exhibition table
INSERT INTO exhibition (eid, gid, startdate, enddate) VALUES
('E1', 'G1', '2018-12-15', '2019-01-15'),
('E2', 'G3', '2019-03-09', '2019-03-27'),
('E3', 'G4', '2024-05-01', '2024-05-15'),
('E4', 'G2', '2024-05-10', '2024-05-25');



-- Inserting data into the customer table
INSERT INTO customer (custid, name, address, userid) VALUES
('C2000', 'Neha Patil', 'Bangalore', 4),
('C1998', 'Nisha Shah', 'Mumbai', 8),
('C1999', 'Anil Kumar', 'Kolkata', 7),
('C1994', 'Sandeep Yadav', 'Mumbai', 5),
('C1996', 'Akash Gupta', 'Delhi', 1),
('C1908', 'Ananya Verma', 'Bangalore', 9),
('C1909', 'Rahul Kumar', 'Delhi', 10);

-- Inserting data into the buys_artwork table
INSERT INTO buys_artwork (transaction_date, transaction_time, amount, custid, artid) VALUES
('2024-04-19', '10:00:00', 175000, 'C2000', 'AW1'),
('2024-04-19', '11:30:00', 185000, 'C1998', 'AW56'),
('2024-04-19', '13:45:00', 190000, 'C1999', 'AW45'),
('2024-04-19', '09:15:00', 60000, 'C1994', 'AW24'),
('2024-04-19', '14:20:00', 80000, 'C1996', 'AW90'),
('2024-05-02', '12:00:00', 125000, 'C1908', 'AW65'),
('2024-05-05', '15:30:00', 140000, 'C1909', 'AW76');


-- Inserting data into the feedback table
INSERT INTO feedback (comment, rating, userid) VALUES
('The artwork surpassed my expectations! Truly excellent.', 5, 1),
('Had a delightful experience exploring the art pieces.', 4, 2),
('While good, I believe there is room for improvement.', 3, 3),
('Extremely satisfied with my purchase. Will definitely return!', 5, 4),
('The gallery has a stunning collection. Loved every bit of it!', 4, 5);





