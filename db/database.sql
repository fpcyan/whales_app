CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  session_token VARCHAR(255) NOT NULL,
  password_digest VARCHAR(255) NOT NULL

);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  body VARCHAR(255) NOT NULL,
  user_id VARCHAR(255) NOT NULL
);
