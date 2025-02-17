DROP TABLE IF EXISTS rentals;
DROP TABLE IF EXISTS my_rentals;


CREATE TABLE rentals (
  id SERIAL PRIMARY KEY,
  location TEXT NOT NULL,
  price INTEGER,
  date DATE,
  group_size INTEGER,
  image VARCHAR 
);

CREATE TABLE my_rentals (
  id SERIAL PRIMARY KEY,
  rental_id INTEGER REFERENCES rentals(id),
  location TEXT NOT NULL,
  price INTEGER NOT NULL,
  date DATE,
  group_size INTEGER,
  image TEXT
);




