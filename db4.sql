CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    create_at timestamp default now(),
	update_at timestamp default now()
)


CREATE TABLE forgot (
    id SERIAL PRIMARY KEY,
    users_email VARCHAR(50),
    new_password VARCHAR(50) NOT NULL,
    create_at timestamp default now(),
	update_at timestamp default now()
)

CREATE TABLE users_forgot (
    id SERIAL PRIMARY KEY,
    users_id INT,
    users_forgot_id INT,
    email VARCHAR(50),
    FOREIGN KEY (users_id) REFERENCES users(id),
    FOREIGN KEY (users_forgot_id) REFERENCES forgot(id),
    create_at timestamp default now(),
	update_at timestamp default now()
)

CREATE TABLE sign_in (
    id SERIAL PRIMARY KEY,
    email VARCHAR(50),
    password VARCHAR(50),
    users_id INT
    FOREIGN KEY (users_id) REFERENCES users(id)
    create_at timestamp default now(),
	update_at timestamp default now()
)

