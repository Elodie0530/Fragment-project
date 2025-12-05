INSERT INTO test_fonctionnement (chapter_number, title, chapter_text) VALUES 
(1, "Hello Début aventure", "C'est par ici que cela commence"),
(25, "Fin d'aventure", "La sortie est par là"),
(125, "Chapitre test", "Si cela ne tenais qu'à moi");

INSERT INTO history (id, title) VALUES 
(1, "Fragment");

INSERT INTO chapter (id, title, is_first, text_normal, history_id, number) VALUES 
(1, "depart", true, "test texte normal modifier", 1, 1),
(28, "école", false, "hello", 1, 2),
(75, "fontaine", false, "test texte folie", 1, 3);
