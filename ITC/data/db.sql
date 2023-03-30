CREATE TABLE IF NOT EXISTS Products (
    pkProduct VARCHAR(255) NOT NULL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description VARCHAR(255) NOT NULL,
    Price FLOAT NOT NULL,
    Brand VARCHAR(255) NOT NULL,
    Model VARCHAR(255) NOT NULL,
    fkCategory INT REFERENCES Categories (pkCategory)
);
CREATE TABLE IF NOT EXISTS Categories (
    pkCategory INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Description VARCHAR(255) NOT NULL
);

INSERT INTO Categories (Name, Description) VALUES ('Smartphones', 'Dispositivi mobili avanzati');
INSERT INTO Categories (Name, Description) VALUES ('Laptop', 'Computer portatili');
INSERT INTO Categories (Name, Description) VALUES ('Tablet', 'Dispositivi portatili più grandi dei telefoni cellulari');
INSERT INTO Categories (Name, Description) VALUES ('Smartwatch', 'Orologi con funzioni avanzate');
INSERT INTO Categories (Name, Description) VALUES ('Smart TV', 'Televisori con connettività Internet e applicazioni');
INSERT INTO Categories (Name, Description) VALUES ('Gaming', 'Prodotti per il gioco, come console e accessori');

INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A001', 'Samsung Galaxy S21', 'Smartphone Android di fascia alta', 899.99, 'Samsung', 'Galaxy S21', 1);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A002', 'Apple iPhone 13 Pro', 'Smartphone iOS di fascia alta', 1099.99, 'Apple', 'iPhone 13 Pro', 1);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A003', 'HP Spectre x360', 'Laptop convertibile di fascia alta', 1499.99, 'HP', 'Spectre x360', 2);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A004', 'Dell XPS 13', 'Laptop di fascia alta', 1299.99, 'Dell', 'XPS 13', 2);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A005', 'Apple iPad Pro', 'Tablet iOS di fascia alta', 899.99, 'Apple', 'iPad Pro', 3);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A006', 'Samsung Galaxy Tab S7+', 'Tablet Android di fascia alta', 849.99, 'Samsung', 'Galaxy Tab S7+', 3);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A007', 'Apple Watch Series 7', 'Smartwatch con schermo sempre attivo', 399.99, 'Apple', 'Watch Series 7', 4);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A008', 'Samsung Galaxy Watch 4', 'Smartwatch con monitoraggio della salute avanzato', 349.99, 'Samsung', 'Galaxy Watch 4', 4);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A009', 'LG OLED CX', 'Smart TV OLED di fascia alta', 1999.99, 'LG', 'OLED CX', 5);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A010', 'Sony PlayStation 5', 'Console di gioco di ultima generazione', 499.99, 'Sony', 'PlayStation 5', 6);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A011', 'Logitech G Pro X', 'Cuffie da gioco con microfono rimovibile', 129.99, 'Logitech', 'G Pro X', 6);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('A012', 'Razer DeathAdder V2', 'Mouse da gioco con sensore ottico avanzato', 69.99, 'Razer', 'DeathAdder V2', 6);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('B025', 'Samsung Galaxy S21', 'Smartphone con display 120 Hz e tripla fotocamera', 799.99, 'Samsung', 'Galaxy S21', 1);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('C014', 'Apple MacBook Pro', 'Computer portatile con processore M1 e display Retina', 1499.99, 'Apple', 'MacBook Pro', 2);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('D008', 'Sony WH-1000XM4', 'Cuffie wireless con cancellazione del rumore', 349.99, 'Sony', 'WH-1000XM4', 3);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('E016', 'LG OLED55C1', 'Smart TV OLED con AI Picture e AI Sound', 1899.99, 'LG', 'OLED55C1', 4);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('G007', 'Bose QuietComfort Earbuds', 'Cuffie True Wireless con cancellazione del rumore', 279.99, 'Bose', 'QuietComfort Earbuds', 3);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('H011', 'Microsoft Surface Laptop 4', 'Computer portatile con processore Intel o AMD', 999.99, 'Microsoft', 'Surface Laptop 4', 2);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('I022', 'ASUS ROG Strix G17', 'Notebook per gaming con processore Intel Core i7', 1499.99, 'ASUS', 'ROG Strix G17', 2);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('J019', 'Dell UltraSharp U2720Q', 'Monitor 4K da 27 pollici con tecnologia USB-C', 719.99, 'Dell', 'UltraSharp U2720Q', 4);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('K010', 'Logitech G915 TKL', 'Tastiera gaming wireless meccanica', 229.99, 'Logitech', 'G915 TKL', 6);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('L012', 'Amazon Echo Show 10', 'Altoparlante smart con display HD rotante', 249.99, 'Amazon', 'Echo Show 10', 7);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('M004', 'GoPro HERO9 Black', 'Action camera con registrazione 5K e stabilizzazione HyperSmooth 3.0', 449.99, 'GoPro', 'HERO9 Black', 5);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('N007', 'Sony PlayStation 5', 'Console di nuova generazione con controller DualSense', 499.99, 'Sony', 'PlayStation 5', 8);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('O005', 'NVIDIA GeForce RTX 3080', 'Scheda grafica con architettura Ampere e ray tracing in tempo reale', 699.99, 'NVIDIA', 'GeForce RTX 3080', 9);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('P008', 'Apple AirPods Max', 'Cuffie over-ear wireless con cancellazione del rumore', 549.99, 'Apple', 'AirPods Max', 3);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('Q016', 'Samsung Odyssey G9', 'Monitor gaming curvo da 49 pollici con refresh rate a 240 Hz', 1499.99, 'Samsung', 'Odyssey G9', 4);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('R012', 'AMD Ryzen 9 5900X', 'Processore desktop con architettura Zen 3 a 12 core e 24 thread', 549.99, 'AMD', 'Ryzen 9 5900X', 9);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('S011', 'Ubiquiti UniFi Dream Machine', 'Router Wi-Fi con controller UniFi integrato', 299.99, 'Ubiquiti', 'UniFi Dream Machine', 10);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('T010', 'LG CX 48', 'Smart TV OLED da 48 pollici con AI ThinQ', 1499.99, 'LG', 'CX 48', 4);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('U006', 'Samsung T7', 'SSD esterno portatile con interfaccia USB-C', 119.99, 'Samsung', 'T7', 11);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('V015', 'HyperX Cloud II Wireless', 'Cuffie gaming wireless con audio surround 7.1', 149.99, 'HyperX', 'Cloud II Wireless', 6);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('W008', 'Corsair RM850x', 'Alimentatore modulare da 850 watt con certificazione 80+ Gold', 149.99, 'Corsair', 'RM850x', 12);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('X013', 'Seagate IronWolf Pro', 'Hard disk interno per NAS da 14 TB con cache di 256 MB', 629.99, 'Seagate', 'IronWolf Pro', 13);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('Y008', 'Lenovo ThinkVision P27h', 'Monitor da 27 pollici con risoluzione QHD e docking station USB-C', 499.99, 'Lenovo', 'ThinkVision P27h', 4);
INSERT INTO Products (pkProduct, Name, Description, Price, Brand, Model, fkCategory) VALUES ('Z011', 'HP Elite Dragonfly', 'Computer portatile ultraleggero con processore Intel Core i7', 1799.99, 'HP', 'Elite Dragonfly', 2);