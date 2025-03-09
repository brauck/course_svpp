DROP DATABASE IF EXISTS hotel;
CREATE DATABASE hotel;
USE hotel;

CREATE TABLE client (
  -- зависимости не позволяют изменять поле id (используется ON UPDATE по умолчанию (RESTRICT))
  id SERIAL PRIMARY KEY,
  `name` VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  hash_password VARCHAR(255), -- hash код пароля
  phone CHAR(20) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  modified_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  INDEX customers_phone_idx(phone),
  INDEX customers_name_idx(`name`),
  CHECK (created_at > '2025-01-01 00:00:00' AND modified_at > created_at)
) COMMENT = 'Покупатели';


CREATE TABLE room (
  id SERIAL PRIMARY KEY,
  client_id BIGINT UNSIGNED NOT NULL,
  rooms_quantity INT UNSIGNED NOT NULL
);

CREATE TABLE `order` (
  client_id BIGINT UNSIGNED NOT NULL,
  room_id BIGINT UNSIGNED NOT NULL,
  order_date_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  order_date_end DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (client_id) REFERENCES client(id) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (room_id) REFERENCES room(id) ON UPDATE CASCADE ON DELETE CASCADE,
  PRIMARY KEY (client_id, room_id)
);

CREATE TABLE admin (
  id SERIAL PRIMARY KEY,
  login VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  hash_password VARCHAR(255)
);