CREATE DATABASE insta;

\c insta

CREATE TABLE Instagram (id SERIAL PRIMARY KEY, username VARCHAR(255), post VARCHAR(255), description VARCHAR(255), hashtags VARCHAR(255)); 
