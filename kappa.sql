CREATE TABLE customer(
    id SERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR,
    surname VARCHAR,
    dob DATE,
    id_no VARCHAR,
    phone INTEGER,
    email VARCHAR UNIQUE,
    street VARCHAR,
    city VARCHAR,
    state_ VARCHAR,
    zip VARCHAR,
    -- primary_insured BOOLEAN,
    payment_method VARCHAR, --Debit, Cash, direct, etc...
    agent VARCHAR,
    seller_id INTEGER REFERENCES seller (id),
);

CREATE TABLE insurance_policy(
    id SERIAL NOT NULL PRIMARY KEY,
    policy_no VARCHAR UNIQUE,
    carrier VARCHAR,
    policy_type VARCHAR, --personal or commercial
    inception_date DATE,
    policy_status VARCHAR,
    policy_id INTEGER REFERENCES customer (id)
);

CREATE TABLE additional_insured(
    id SERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR,
    surname VARCHAR,
    dob DATE,
    phone INTEGER,
    policy_holder_id INTEGER REFERENCES customer (id),
    policy_no_id INTEGER REFERENCES insurance_policy (id)
);

CREATE TABLE agent(
    id SERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR,
    surname VARCHAR
);

CREATE TABLE dealership(
    id SERIAL NOT NULL PRIMARY KEY,
    dealer_name VARCHAR,
    street VARCHAR,
    city VARCHAR,
    phone INTEGER,
    fax INTEGER
);

CREATE TABLE seller(
    id SERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR,
    surname VARCHAR,
    phone INTEGER,
    dealer_id INTEGER REFERENCES dealership (id)
);

CREATE TABLE tasks(
    id SERIAL NOT NULL PRIMARY KEY,
    customer_id INTEGER REFERENCES customer (id),
    agent VARCHAR,
    init_date DATE,
    due_date DATE,
    task_status BOOLEAN,
    close_date DATE,
    comment_id INTEGER REFERENCES task (id)
);

CREATE TABLE comments(
    id SERIAL NOT NULL PRIMARY KEY,
    init_date DATE,
    comment VARCHAR
)