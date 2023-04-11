CREATE DATABASE clinic;
CREATE TABLE patients(
  id             INT GENERATED ALWAYS AS IDENTITY,
  name            VARCHAR(120),
  date_of_birth   DATE,
  PRIMARY KEY(id)
);


CREATE TABLE medical_histories (
    id INT GENERATED ALWAYS AS IDENTITY,
    admitted_at TIMESTAMP,
    patient_id INT REFERENCES patients(id),
    status VARCHAR(80),
    PRIMARY KEY (id)
);

CREATE TABLE treatments (
	id INT GENERATED ALWAYS AS IDENTITY,
  type	VARCHAR(120), 
  name	VARCHAR(120),
  PRIMARY KEY (id)
);

CREATE TABLE medical_histories_treatments(
    medical_history_id INTEGER REFERENCES medical_histories(id),
    treatment_id INTEGER REFERENCES treatments(id),
    PRIMARY KEY (medical_history_id, treatment_id)
);