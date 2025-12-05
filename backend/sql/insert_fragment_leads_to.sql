INSERT INTO lead_to (action, start_id, end_id) VALUES
(
    "vers la fontaine",
    (select id from chapter where history_id = 1 and number=1),
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
);
