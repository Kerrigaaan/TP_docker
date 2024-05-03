CREATE DATABASE gestion_produits;


\c gestion_produits


DROP TABLE IF EXISTS produits;
CREATE TABLE produits (
  PRO_id SERIAL PRIMARY KEY,
  PRO_lib varchar(200) NOT NULL,
  PRO_prix NUMERIC(10,2) NOT NULL,
  PRO_description TEXT
);


INSERT INTO produits (PRO_lib, PRO_prix, PRO_description)
VALUES
  ('Pédales Shimano XT M8040 M/L', 74.99, '...'),
  ('Selle FIZIK ARIONE VERSUS Rails Kium', 59.99, '...'),
  ('Chaussures VTT MAVIC CROSSMAX SL PRO THERMO Noir', 164.99, '...'),
  ('Pack GPS GARMIN EDGE 1030 + Ceinture Cardio', 519.99, '...'),
  ('Fourche DVO SAPPHIRE 29', 549.99, '...');

DROP TABLE IF EXISTS ressources;
CREATE TABLE ressources (
  RE_id SERIAL PRIMARY KEY,
  RE_type varchar(100) NOT NULL,
  RE_url varchar(1000) NOT NULL,
  RE_nom varchar(100),
  PRO_id INT NOT NULL,
  FOREIGN KEY (PRO_id) REFERENCES produits(PRO_id)
);

INSERT INTO ressources (RE_type, RE_url, RE_nom, PRO_id)
VALUES
  ('img', 'uploads/3-ad201839b2ed3d2e4dae6c4f60c4b351.jpg', NULL, 3),
  ('img', 'uploads/3-7e147d9390a77334782851729ed8384f.jpg', NULL, 3),
  ('img', 'uploads/3-82fde3218e6f64fa94e8139fe80f7917.jpg', NULL, 3),
  ('img', 'uploads/5-19b235d023eef2281304433f0d4438b6.jpg', NULL, 5),
  ('img', 'uploads/5-b02cbdbc96d5c9a20526763576f56a11.jpg', NULL, 5),
  ('img', 'uploads/5-8e258524bf0f2aae28647a1aa8a77a8c.jpg', NULL, 5),
  ('img', 'uploads/4-a21d716bdfda2004d50171559c4b1b92.jpg', NULL, 4),
  ('img', 'uploads/4-1cb57a6c1de5c2573679654054a2b3b0.jpg', NULL, 4),
  ('img', 'uploads/4-438b7f4eec56d20aca694793882909ac.jpg', NULL, 4),
  ('img', 'uploads/1-707116622e5d4fe50dfc6391af4a5421.jpg', NULL, 1),
  ('img', 'uploads/1-7f8aacccd9c522281c58e5eb90cbb6a8.jpg', NULL, 1),
  ('img', 'uploads/1-987e17d65fb62e5fece343304d7be827.jpg', NULL, 1),
  ('img', 'uploads/2-e2b9f326909fe34dc9f73e515d0e5633.jpg', NULL, 2),
  ('img', 'uploads/2-5dfd065b9d05455732d122cdc3b64e27.jpg', NULL, 2),
  ('img', 'uploads/2-7e38160b643cf0e21ff445c9594e77d7.jpg', NULL, 2),
  ('img', 'uploads/2-2228cc7d3b9f647bfa31dd4ebf0f3885.jpg', NULL, 2);


DROP TABLE IF EXISTS utilisateurs;
CREATE TABLE utilisateurs (
  US_id SERIAL PRIMARY KEY,
  US_login varchar(100) UNIQUE NOT NULL,
  US_password varchar(100) NOT NULL
);


INSERT INTO utilisateurs (US_login, US_password)
VALUES ('admin', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');
