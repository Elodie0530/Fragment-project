INSERT INTO test_fonctionnement (chapter_number, title, chapter_text) VALUES 
(1, "Hello Début aventure", "C'est par ici que cela commence"),
(25, "Fin d'aventure", "La sortie est par là"),
(125, "Chapitre test", "Si cela ne tenais qu'à moi");

INSERT INTO history (id, title) VALUES 
(1, "Fragment");

/* test data
INSERT INTO chapter (id, title, is_first, text_normal, history_id, number, image_path, image_alt, gives_fragment, text_insane) VALUES 
(1, "depart", true, "texte normal départ", 1, 1, "/fragment/test_depart.png", "test alt 1 - Logo du projet Fragment", false, "texte folie"),
(28, "école", false, "hello - donne un fragment", 1, 2, "/fragment/test_ecole.jpg", "test alt 2 - Illustration d'une école par IA", true, NULL),
(75, "fontaine", false, "test texte normal", 1, 3, "/fragment/test_des.jpg", "test alt 3 - Un dé 20 de JDR", false, "texte si obtention d'un fragment"),
(95, "infini", false, "test texte normal même si fragment", 1, 4, NULL, "test alt 4", false, NULL),
(140, "au-delà", false, "texte normal", 1, 5, "/fragment/test_des.jpg", "test alt 5", false, "texte folie même après un chapitre normal");*/

INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES 
