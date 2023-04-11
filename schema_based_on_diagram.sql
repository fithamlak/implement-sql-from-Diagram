CREATE DATABASE clinic;
CREATE TABLE patients(
  id             INT GENERATED ALWAYS AS IDENTITY,
  name            VARCHAR(120),
  date_of_birth   DATE,
  PRIMARY KEY(id)
);