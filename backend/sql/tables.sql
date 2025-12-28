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
    history_id INT NOT NULL,
    title VARCHAR(255),
    is_first BOOLEAN,
    number INT NOT NULL,
    gives_fragment BOOLEAN,
    text_normal TEXT,
    text_insane TEXT,
    image_path VARCHAR(255),
    image_alt VARCHAR(255),
    CONSTRAINT fk_history_id FOREIGN KEY (history_id) REFERENCES history(id)
);

CREATE TABLE lead_to (
    id INT AUTO_INCREMENT PRIMARY KEY,
    action VARCHAR(255),
    start_id INT,
    end_id INT,
   position INT
);
