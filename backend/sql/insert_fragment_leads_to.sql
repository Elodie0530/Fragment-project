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

-- ==========
-- ACTE 1 - LA MISSION
-- ==========

-- Acte 1 — Chapitre 1 — Carte de la région d'Onenta-aux-Mines (départ)
(
    "La place de la fontaine",
    (select id from chapter where history_id = 1 and number = 1),
    (select id from chapter where history_id = 1 and number = 2), 1
),

-- Acte 1 — Chapitre 2 — La place de la fontaine
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

-- Acte 1 — Chapitre 11 — L’Auberge Duergar
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
),

-- Acte 1 — Chapitre 34 — Entrer dans l’auberge, parler avec
(
    "Au serveur",
    (select id from chapter where history_id = 1 and number = 34),
    (select id from chapter where history_id = 1 and number = 3), 1
),
(
    "À un client attablé",
    (select id from chapter where history_id = 1 and number = 34),
    (select id from chapter where history_id = 1 and number = 49), 2
),
(
    "À un client au bar",
    (select id from chapter where history_id = 1 and number = 34),
    (select id from chapter where history_id = 1 and number = 27), 3
),
(
    "Aux aubergistes",
    (select id from chapter where history_id = 1 and number = 34),
    (select id from chapter where history_id = 1 and number = 55), 4
),

-- Acte 1 — Chapitre 3 — Le serveur
(
    "Retourner dans l'entrée de l’auberge",
    (select id from chapter where history_id = 1 and number = 3),
    (select id from chapter where history_id = 1 and number = 34), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 3),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 49 — Un client attablé
(
    "Retourner dans l'entrée de l’auberge",
    (select id from chapter where history_id = 1 and number = 49),
    (select id from chapter where history_id = 1 and number = 34), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 49),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 27 — Un client au bar
(
    "Retourner dans l'entrée de l’auberge",
    (select id from chapter where history_id = 1 and number = 27),
    (select id from chapter where history_id = 1 and number = 34), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 27),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 55 — Les aubergistes
(
    "Retourner dans l'entrée de l’auberge",
    (select id from chapter where history_id = 1 and number = 55),
    (select id from chapter where history_id = 1 and number = 34), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 55),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 22 — L'école du village
(
    "Entrer dans l’école",
    (select id from chapter where history_id = 1 and number = 22),
    (select id from chapter where history_id = 1 and number = 15), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 22),
    (select id from chapter where history_id = 1 and number = 2), 2
),
(
    "Se rendre à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 22),
    (select id from chapter where history_id = 1 and number = 6), 3
),

-- Acte 1 — Chapitre 15 — Entrer dans l’école, parler avec
(
    "Le professeur",
    (select id from chapter where history_id = 1 and number = 15),
    (select id from chapter where history_id = 1 and number = 30), 1
),
(
    "Les élèves",
    (select id from chapter where history_id = 1 and number = 15),
    (select id from chapter where history_id = 1 and number = 19), 2
),
(
    "La tombola",
    (select id from chapter where history_id = 1 and number = 15),
    (select id from chapter where history_id = 1 and number = 54), 3
),
(
    "Orsik Pioche d’Argent",
    (select id from chapter where history_id = 1 and number = 15),
    (select id from chapter where history_id = 1 and number = 4), 4
),

-- Acte 1 — Chapitre 30 — Le professeur
(
    "Retourner dans l'entrée de l’école",
    (select id from chapter where history_id = 1 and number = 30),
    (select id from chapter where history_id = 1 and number = 15), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 30),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 19 — Les élèves
(
    "Retourner dans l'entrée de l’école",
    (select id from chapter where history_id = 1 and number = 19),
    (select id from chapter where history_id = 1 and number = 15), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 19),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 54 — La tombola
(
    "Oui, voir le gain remporté",
    (select id from chapter where history_id = 1 and number = 54),
    (select id from chapter where history_id = 1 and number = 63), 1
),
(
    "Non, je ne veux pas jouer",
    (select id from chapter where history_id = 1 and number = 54),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 63 — Gain tombola
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 63),
    (select id from chapter where history_id = 1 and number = 2), 1
),
(
    "Se rendre à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 63),
    (select id from chapter where history_id = 1 and number = 6), 2
),

-- Acte 1 — Chapitre 4 — Orsik Pioche d’Argent
(
    "Retourner dans l'entrée de l’école",
    (select id from chapter where history_id = 1 and number = 4),
    (select id from chapter where history_id = 1 and number = 15), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 4),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 33 — La bijouterie
(
    "Entrer dans la bijouterie",
    (select id from chapter where history_id = 1 and number = 33),
    (select id from chapter where history_id = 1 and number = 25), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 33),
    (select id from chapter where history_id = 1 and number = 2), 2
),
(
    "Se rendre à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 33),
    (select id from chapter where history_id = 1 and number = 6), 3
),

-- Acte 1 — Chapitre 25 — Entrer dans la bijouterie, parler avec
(
    "Le vigile",
    (select id from chapter where history_id = 1 and number = 25),
    (select id from chapter where history_id = 1 and number = 5), 1
),
(
    "Des clients",
    (select id from chapter where history_id = 1 and number = 25),
    (select id from chapter where history_id = 1 and number = 17), 2
),
(
    "Un vendeur",
    (select id from chapter where history_id = 1 and number = 25),
    (select id from chapter where history_id = 1 and number = 41), 3
),
(
    "Tharadin Emérhalde",
    (select id from chapter where history_id = 1 and number = 25),
    (select id from chapter where history_id = 1 and number = 13), 4
),

-- Acte 1 — Chapitre 5 — Le vigile
(
    "Retourner dans l'entrée de la bijouterie",
    (select id from chapter where history_id = 1 and number = 5),
    (select id from chapter where history_id = 1 and number = 25), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 5),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 17 — Des clients bijouterie
(
    "Retourner dans l'entrée de la bijouterie",
    (select id from chapter where history_id = 1 and number = 17),
    (select id from chapter where history_id = 1 and number = 25), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 17),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 41 — Un vendeur
(
    "Oui",
    (select id from chapter where history_id = 1 and number = 41),
    (select id from chapter where history_id = 1 and number = 36), 1
),
(
    "Non",
    (select id from chapter where history_id = 1 and number = 41),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 1 — Chapitre 36 — Achat d'un bijou
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 36),
    (select id from chapter where history_id = 1 and number = 2), 1
),
(
    "Se rendre à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 36),
    (select id from chapter where history_id = 1 and number = 6), 2
),

-- Acte 1 — Chapitre 13 — Tharadin Emérhalde
(
    "Retourner dans l'entrée de la bijouterie",
    (select id from chapter where history_id = 1 and number = 13),
    (select id from chapter where history_id = 1 and number = 25), 1
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 13),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- ==========
-- ACTE 2 - LA BOURSE AUX MINERAUX
-- ==========

-- Acte 2 — Chapitre 6 — Se rendre à la bourse aux minéraux
(
    "Assez d’indices",
    (select id from chapter where history_id = 1 and number = 6),
    (select id from chapter where history_id = 1 and number = 8), 1
),

-- Acte 2 — Chapitre 8 — Assez d’indices
(
    "Oui",
    (select id from chapter where history_id = 1 and number = 8),
    (select id from chapter where history_id = 1 and number = 10), 1
),
(
    "Non",
    (select id from chapter where history_id = 1 and number = 8),
    (select id from chapter where history_id = 1 and number = 2), 2
),

-- Acte 2 — Chapitre 10 — La bourse aux minéraux
(
    "Kathéra Ribeaupierre",
    (select id from chapter where history_id = 1 and number = 10),
    (select id from chapter where history_id = 1 and number = 62), 1
),
(
    "Un inconnu énigmatique",
    (select id from chapter where history_id = 1 and number = 10),
    (select id from chapter where history_id = 1 and number = 56), 2
),
(
    "Revenir place de la fontaine",
    (select id from chapter where history_id = 1 and number = 10),
    (select id from chapter where history_id = 1 and number = 2), 3
),

-- Acte 2 — Chapitre 62 — Kathéra Ribeaupierre
(
    "Revenir à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 62),
    (select id from chapter where history_id = 1 and number = 10), 1
),

-- Acte 2 — Chapitre 56 — Un inconnu énigmatique (=> Vol bourse)
(
    "Accepter",
    (select id from chapter where history_id = 1 and number = 56),
    (select id from chapter where history_id = 1 and number = 44), 1
),
(
    "Refuser",
    (select id from chapter where history_id = 1 and number = 56),
    (select id from chapter where history_id = 1 and number = 9), 2
),
(
    "Le dénoncer à la garde",
    (select id from chapter where history_id = 1 and number = 56),
    (select id from chapter where history_id = 1 and number = 51), 3
),

-- Acte 2 — Chapitre 44 — Accepter le vol (=> Fragment bourse)
(
    "Et maintenant ?",
    (select id from chapter where history_id = 1 and number = 44),
    (select id from chapter where history_id = 1 and number = 57), 1
),

-- Acte 2 — Chapitre 9 — Refuser le vol
(
    "Tout recommence",
    (select id from chapter where history_id = 1 and number = 9),
    (select id from chapter where history_id = 1 and number = 59), 1
),

-- Acte 2 — Chapitre 51 — Dénonciation garde
(
    "Revenir à la bourse aux minéraux",
    (select id from chapter where history_id = 1 and number = 51),
    (select id from chapter where history_id = 1 and number = 10), 1
),

-- ==========
-- ACTE 3 - LES CHOIX POUR LA FIN
-- ==========

-- Acte 3 — Chapitre 59 — Tout recommence
-- (valable pour les chapitres : Refuser le vol (9), Pris de remords (53), Les Kobolds (58), Demi-tour (23), Obtempérer Sélémar (64), Se battre brigands (31), En joue milice (60))
(
    "Revenir au début de l’aventure",
    (select id from chapter where history_id = 1 and number = 59),
    (select id from chapter where history_id = 1 and number = 1), 1
),

-- Acte 3 — Chapitre 57 — Et maintenant ?
(
    "Pris de remords",
    (select id from chapter where history_id = 1 and number = 57),
    (select id from chapter where history_id = 1 and number = 53), 1
),
(
    "Le rapporter à l’inconnu",
    (select id from chapter where history_id = 1 and number = 57),
    (select id from chapter where history_id = 1 and number = 58), 2
),
(
    "Vers les anciennes mines",
    (select id from chapter where history_id = 1 and number = 57),
    (select id from chapter where history_id = 1 and number = 47), 3
),
(
    "Vers Sélémar",
    (select id from chapter where history_id = 1 and number = 57),
    (select id from chapter where history_id = 1 and number = 32), 4
),
(
    "Vers Raizin",
    (select id from chapter where history_id = 1 and number = 57),
    (select id from chapter where history_id = 1 and number = 24), 5
),
(
    "Vers Lapoutre",
    (select id from chapter where history_id = 1 and number = 57),
    (select id from chapter where history_id = 1 and number = 16), 6
),

-- Acte 3 — Chapitre 53 — Pris de remords
(
    "Tout recommence",
    (select id from chapter where history_id = 1 and number = 53),
    (select id from chapter where history_id = 1 and number = 59), 1
),

-- Acte 3 — Chapitre 58 — Les Kobolds (= Le rapporter à l’inconnu)
(
    "Tout recommence",
    (select id from chapter where history_id = 1 and number = 58),
    (select id from chapter where history_id = 1 and number = 59), 1
),

-- Acte 3 — Chapitre 23 — Faire demi-tour
(
    "Tout recommence",
    (select id from chapter where history_id = 1 and number = 23),
    (select id from chapter where history_id = 1 and number = 59), 1
),

-- Acte 3 — Chapitre 65 — C’est terminé
(
    "Revenir au début de l’aventure",
    (select id from chapter where history_id = 1 and number = 65),
    (select id from chapter where history_id = 1 and number = 1), 1
),

-- Acte 3 — Chapitre 47 — Vers les anciennes mines
(
    "La mine",
    (select id from chapter where history_id = 1 and number = 47),
    (select id from chapter where history_id = 1 and number = 12), 1
),

-- Acte 3 — Chapitre 12 — La mine
(
    "Faire demi-tour",
    (select id from chapter where history_id = 1 and number = 12),
    (select id from chapter where history_id = 1 and number = 23), 1
),
(
    "Y entrer",
    (select id from chapter where history_id = 1 and number = 12),
    (select id from chapter where history_id = 1 and number = 14), 2
),

-- Acte 3 — Chapitre 14 — L’intérieur de la mine
(
    "Faire demi-tour",
    (select id from chapter where history_id = 1 and number = 14),
    (select id from chapter where history_id = 1 and number = 23), 1
),
(
    "Poursuivre dans la mine",
    (select id from chapter where history_id = 1 and number = 14),
    (select id from chapter where history_id = 1 and number = 52), 2
),

-- Acte 3 — Chapitre 52 — L’autel
(
    "Faire demi-tour",
    (select id from chapter where history_id = 1 and number = 52),
    (select id from chapter where history_id = 1 and number = 23), 1
),
(
    "Suivre votre intuition",
    (select id from chapter where history_id = 1 and number = 52),
    (select id from chapter where history_id = 1 and number = 42), 2
),

-- Acte 3 — Chapitre 42 — La prophétie mine (= Suivre votre intuition)
(
    "Faire demi-tour",
    (select id from chapter where history_id = 1 and number = 42),
    (select id from chapter where history_id = 1 and number = 23), 1
),
(
    "Détruire la mine",
    (select id from chapter where history_id = 1 and number = 42),
    (select id from chapter where history_id = 1 and number = 61), 2
),

-- Acte 3 — Chapitre 61 — Destruction de la mine
(
    "Retour vers la surface",
    (select id from chapter where history_id = 1 and number = 61),
    (select id from chapter where history_id = 1 and number = 7), 1
),

-- Acte 3 — Chapitre 7 — Retour vers la surface - Fin mine
(
    "C’est terminé",
    (select id from chapter where history_id = 1 and number = 7),
    (select id from chapter where history_id = 1 and number = 65), 1
);
