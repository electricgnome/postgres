CREATE TABLE dealership(
    id SERIAL NOT NULL PRIMARY KEY,
    dealer_name TEXT,
    street TEXT,
    city TEXT,
    phone TEXT,
    fax TEXT
);

CREATE TABLE seller(
    id SERIAL NOT NULL PRIMARY KEY,
    first_name TEXT,
    surname TEXT,l
    phone TEXT,
    dealer_id INTEGER REFERENCES dealership (id)
);

CREATE TABLE customer(
    id SERIAL NOT NULL PRIMARY KEY,
    first_name TEXT,
    surname TEXT,
    dob DATE,
    id_no TEXT,
    phone TEXT,
    email TEXT UNIQUE,
    street TEXT,
    city TEXT,
    state_ TEXT,
    zip TEXT, -- primary_insured BOOLEAN,
    payment_method TEXT, --Debit, Cash, direct, etc...
    agent TEXT,
    seller_id INTEGER REFERENCES seller (id)
);

CREATE TABLE insurance_policy(
    id SERIAL NOT NULL PRIMARY KEY,
    policy_no TEXT UNIQUE,
    carrier TEXT,
    policy_type TEXT, --personal or commercial
    inception_date DATE,
    policy_status TEXT,
    policy_id INTEGER REFERENCES customer (id)
);

CREATE TABLE additional_insured(
    id SERIAL NOT NULL PRIMARY KEY,
    first_name TEXT,
    surname TEXT,
    dob DATE,
    phone TEXT,
    policy_holder_id INTEGER REFERENCES customer (id),
    policy_no_id INTEGER REFERENCES insurance_policy (id)
);

CREATE TABLE agent(
    id SERIAL NOT NULL PRIMARY KEY,
    first_name TEXT,
    surname TEXT
);

CREATE TABLE comments(
    id SERIAL NOT NULL PRIMARY KEY,
    init_date DATE,
    comment TEXT
);

CREATE TABLE tasks(
    id SERIAL NOT NULL PRIMARY KEY,
    customer_id INTEGER REFERENCES customer (id),
    agent TEXT,
    init_date DATE,
    due_date DATE,
    task_status BOOLEAN,
    close_date DATE,
    comment_id INTEGER REFERENCES tasks (id)
);

-- INSERT INTO dealership VALUES (
--     DEFAULT, 'Central Houston Nissan', '2000 South Loop W.', 'Houston', '7135181488', '8320609232'
-- );

-- INSERT INTO seller VALUES (
--     DEFAULT, 'Moe', 'Sayed', '7135257894',1
-- );

-- INSERT INTO customer VALUES (
--     DEFAULT, 'Hector', 'Saldana', '1983-07-24', '197916853','9564554564', 'hector@kappainsure.com', '8119 Braesdale ln', 'Houston', 'Tx', 78521, 'EFT', 'Emy', 1 
-- );