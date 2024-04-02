CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  orbital_period_in_years FLOAT NOT NULL CHECK (orbital_period_in_years > 0),
  orbits_around VARCHAR(255) NOT NULL,
  galaxy VARCHAR(255) NOT NULL
);

CREATE TABLE moons
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  planet_id INTEGER NOT NULL,
  FOREIGN KEY (planet_id) REFERENCES planets (id)
);

CREATE INDEX idx_planets_name ON planets (name);
CREATE INDEX idx_planets_orbits_around ON planets (orbits_around);
CREATE INDEX idx_planets_galaxy ON planets (galaxy);
