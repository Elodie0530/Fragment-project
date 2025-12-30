/* test data
INSERT INTO lead_to (action, start_id, end_id) VALUES
(
    "vers la fontaine",
    (select id from chapter where history_id = 1 and number=2),
    (select id from chapter where history_id = 1 and number=3)
),
(
    "vers l'école",
    (select id from chapter where history_id = 1 and number=1),
    (select id from chapter where history_id = 1 and number=2)
),
(
    "fin, recommencer ?",
    (select id from chapter where history_id = 1 and number=3),
    (select id from chapter where history_id = 1 and number=1)
),
(
    "fin, recommencer ?",
    (select id from chapter where history_id = 1 and number=2),
    (select id from chapter where history_id = 1 and number=1)
),
(
    "vers l'infini",
    (select id from chapter where history_id = 1 and number=2),
    (select id from chapter where history_id = 1 and number=4)
),
(
    "fin, recommencer ?",
    (select id from chapter where history_id = 1 and number=4),
    (select id from chapter where history_id = 1 and number=1)
),
(
    "au-delà",
    (select id from chapter where history_id = 1 and number=1),
    (select id from chapter where history_id = 1 and number=5)
),
(
    "au-delà",
    (select id from chapter where history_id = 1 and number=2),
    (select id from chapter where history_id = 1 and number=5)
),
(
    "au-delà",
    (select id from chapter where history_id = 1 and number=4),
    (select id from chapter where history_id = 1 and number=5)
),
(
    "fin, recommencer ?",
    (select id from chapter where history_id = 1 and number=5),
    (select id from chapter where history_id = 1 and number=1)
);*/

INSERT INTO lead_to (action, start_id, end_id, position) VALUES

-- Chapitre 1 — Carte départ
(
    "La place de la fontaine",
    (select id from chapter where history_id = 1 and number = 1),
    (select id from chapter where history_id = 1 and number = 2), 1
),

-- Chapitre 2 — Place de la fontaine
(
    "Aller à l’auberge Duergar",
    (select id from chapter where history_id = 1 and number = 2),
    (select id from chapter where history_id = 1 and number = 11), 1
),
(
    "Visiter l’école du village",
    (select id from chapter where history_id = 1 and number = 2),
    (select id from chapter where history_id = 1 and number = 22), 2
),
(
    "Explorer la bijouterie",
    (select id from chapter where history_id = 1 and number = 2),
    (select id from chapter where history_id = 1 and number = 33), 3
),

-- Chapitre 11 — L’Auberge Duergar
(
    "Entrer dans l’auberge",
    (select id from chapter where history_id = 1 and number = 11),
    (select id from chapter where history_id = 1 and number = 34), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 11),
    (select id from chapter where history_id = 1 and number = 2), 2
),
(
    "Se rendre à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 11),
    (select id from chapter where history_id = 1 and number = 6), 3
);
