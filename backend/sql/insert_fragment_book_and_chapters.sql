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

-- Chapitre 1 — Carte départ
(1,
"Carte départ",
true,
1,
false,
"Bienvenue dans la petite ville cosmopolite d’Onenta-aux-Mines, une cité minière réputée, placée sous l’autorité de l’Empereur du Saint-Empire romain germanique. 

Un peu de géographie :
- Onenta-aux-Mines se situe à l’entrée d’une vallée, sur les contreforts des Montagnes d’Argent. 
Du fond de cette vallée serpente la Lapinette, une rivière navigable qui, loin à l’ouest, se jette dans la Hase, un grand fleuve servant d’axe commercial à toute cette partie de l’Empire. 
- Au croisement de ces deux cours d’eau, s’élève Sélémar, une grande cité commerciale dont les comptoirs constituent une étape souvent incontournable pour le commerce d’Onenta-aux-Mines. 
- Les régions au sud sont riches en vignobles, cultivés par la guilde locale des vignerons basée à Raizin. 
Cette région est source de conflits avec le duché d’Asterakie, qui revendique ces terres profitant d’une frontière mal définie. Actuellement, elle appartient à Onenta-aux-Mines, tout comme Lapoutre.
- Lapoutre se trouve au nord, de l’autre côté de la Lapinette, c’est un village de bûcherons qui fournit la ville en bois et en charbon. 
Les forêts alentour sont denses et riches en différentes variétés d’essences d’arbres. Elles abritent aussi de nombreuses créatures potentiellement dangereuses et menaçantes.

Votre présence a été requise en ville, via l’entremise de contacts influents à Sélémar, connaissant les bonnes personnes pour cette mission, par les aubergistes de l’historique “Bretzel Duergar”. 
De retour de voyage, ils ont constaté chez certains habitants des comportements étranges et inquiétants se manifestant sous une forme de folie.
Un mal inconnu ronge-t-il la ville ? Est-ce une simple épidémie… ou quelque chose de bien plus sombre ?

Êtes-vous prêts pour cette aventure ? 
Si oui, cliquez sur le bouton ci-dessous qui vous permettra de naviguer entre les chapitres.
",
NULL,
"/fragment/carte_depart.jpg",
"Carte du secteur de jeu comme décrit dans le texte attenant."),

-- Chapitre 2 — Place de la fontaine
(1,
"Place de la fontaine",
false,
2,
false,
"Aventurier, vous voici arrivé sur la place de la fontaine d’Onenta-aux-Mines. 
Celle-ci est incrustée d’une multitude de cristaux de différentes formes, tailles et couleurs. 
Elle est surmontée par la statue de François Thomas, un miraculeux sourcier local de renom.
Autour, trois bâtiments retiennent votre attention : l’auberge historique “Bretzel Duergar”, l’école du village et la joaillerie-bijouterie. 

Où souhaitez-vous vous rendre ?",

"Aventurier, vous retournez sur la place de la fontaine d’Onenta-aux-Mines. 
La multitude de cristaux incrustés dans la pierre vous semble avoir un éclat plus intense qu’avant. Trop intense. Une lueur trouble danse sur leurs surfaces polies. 
La statue de François Thomas se dresse toujours là, la surplombant, figée dans son éternelle posture… mais quelque chose vous dérange, vous êtes presque certain que son regard était tourné ailleurs, avant. Non ?
Autour, l’auberge historique “Bretzel Duergar”, l’école du village et la joaillerie-bijouterie sont toujours à leur place. Pourtant, vous avez le sentiment que vous devez vous dépêcher d’aller quelque part. Maintenant. 

Où souhaitez-vous vous rendre ?
",
"/fragment/place_fontaine.jpg",
"Place du village avec au centre, une fontaine incrustée de joyaux surmontée d’une statue et des bâtiments ainsi que des stands de marchands ambulants autour."),

-- Chapitre 11 — L’Auberge Duergar
(1,
"L’Auberge Duergar",
false,
11,
false,
"L’auberge est une ancienne bâtisse imposante et chargée d’histoires.
Elle est réputée dans la région et classée au patrimoine de la ville. 
Aux beaux jours, sa petite terrasse invite à la détente.

Que faites-vous ?
",

"L’auberge est une ancienne bâtisse imposante et chargée d’histoires que laissent transparaître les pierres.
Elle est réputée dans la région et classée au patrimoine de la ville. 
Aux beaux jours, sa petite terrasse invite à la détente.

Que faites-vous ?
",
"/fragment/auberge_duergar.jpg",
"Vue extérieure de l’auberge en pierre rustique “Bretzel Duergar”, illuminée de lanternes. 
Elle possède une cour pavée et quelques tables ombragées par un arbre.");
