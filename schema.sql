CREATE TABLE lists(
  id serial PRIMARY KEY,
  name text NOT NULL UNIQUE
  );

CREATE TABLE todos(
  id serial PRIMARY KEY,
  name text NOT NULL,
  completed boolean NOT NULL DEFAULT 'false',
  list_id int NOT NULL
  );
  
ALTER TABLE todos ADD FOREIGN KEY (list_id) REFERENCES lists (id);