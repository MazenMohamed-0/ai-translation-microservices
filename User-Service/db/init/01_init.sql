CREATE TABLE IF NOT EXISTS user (
    id VARCHAR(255) PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS chat(
	user_id VARCHAR(255) REFERENCES user(id),
	chat_id VARCHAR(255) PRIMARY KEY NOT NULL,
	in_text TEXT NOT NULL,
	out_text TEXT NOT NULL,
	type VARCHAR(255) NOT NULL,
	formality VARCHAR(255),
	timestamp DATETIME NOT NULL,

	
);
