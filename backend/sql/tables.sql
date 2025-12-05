CREATE TABLE test_fonctionnement (
    id INT AUTO_INCREMENT PRIMARY KEY,
    chapter_number TINYINT NOT NULL,
    title VARCHAR(255),
    chapter_text text
);

CREATE TABLE history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE chapter (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    is_first BOOLEAN,
    text_normal VARCHAR(255),
    history_id INT NOT NULL,
    number INT NOT NULL,
    CONSTRAINT fk_history_id FOREIGN KEY (history_id) REFERENCES history(id)
);

CREATE TABLE lead_to (
    id INT AUTO_INCREMENT PRIMARY KEY,
    action VARCHAR(255),
    start_id INT,
    end_id INT
);