CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  seat VARCHAR(10) NOT NULL,
  departure TIMESTAMP WITH TIME ZONE NOT NULL,
  arrival TIMESTAMP WITH TIME ZONE NOT NULL,
  airline_id INTEGER NOT NULL,
  from_city_id INTEGER NOT NULL,
  to_city_id INTEGER NOT NULL
);

CREATE TABLE airlines
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE cities
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  country_id INTEGER NOT NULL
);

CREATE TABLE countries
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

ALTER TABLE tickets
ADD CONSTRAINT fk_airline
FOREIGN KEY (airline_id)
REFERENCES airlines (id);

ALTER TABLE tickets
ADD CONSTRAINT fk_from_city
FOREIGN KEY (from_city_id)
REFERENCES cities (id);

ALTER TABLE tickets
ADD CONSTRAINT fk_to_city
FOREIGN KEY (to_city_id)
REFERENCES cities (id);
