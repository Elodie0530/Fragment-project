INSERT INTO test_fonctionnement (chapter_number, title, chapter_text) VALUES 
(1, "Hello Début aventure", "C'est par ici que cela commence"),
(25, "Fin d'aventure", "La sortie est par là"),
(125, "Chapitre test", "Si cela ne tenais qu'à moi");

INSERT INTO history (id, title) VALUES 
(1, "Fragment");

INSERT INTO chapter (id, title, is_first, text_normal, history_id, number, image_path, image_alt) VALUES 
(1, "depart", true, "test texte normal modifier", 1, 1, "https://picsum.photos/200.jpg", "test alt 1"),
(28, "école", false, "hello", 1, 2, "https://picsum.photos/200.jpg", "test alt 2"),
(75, "fontaine", false, "test texte folie", 1, 3, "https://picsum.photos/200.jpg", "test alt 3");
