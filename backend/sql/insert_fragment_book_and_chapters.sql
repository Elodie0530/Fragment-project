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

-- Acte 1 — Chapitre 1 — Carte départ
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

-- Acte 1 — Chapitre 2 — Place de la fontaine
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

-- Acte 1 — Chapitre 11 — L’Auberge Duergar
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
"/fragment/auberge/auberge_duergar.jpg",
"Vue extérieure de l’auberge en pierre rustique “Bretzel Duergar”, illuminée de lanternes. 
Elle possède une cour pavée et quelques tables ombragées par un arbre."),

-- Acte 1 — Chapitre 34 — Entrer dans l’auberge, parler avec
(1,
"Entrer dans l’auberge, parler avec",
false,
34,
false,
"Vous pénétrez dans l’auberge où règne une atmosphère chaleureuse. L’odeur du pain chaud et des épices flotte dans l’air.
Autour de vous, un serveur s’affaire entre les tables, quelques clients sont attablés, certains accoudés au bar. 
Les aubergistes, Monsieur Bicar et Madame Mauricette, veillent d’un œil attentif sur leur établissement.

À qui souhaitez-vous parler ?
",

"Vous pénétrez dans l’auberge où règne une atmosphère chaleureuse. 
Une odeur familière flotte dans l’air, mais elle a quelque chose d’étrange, trop sucrée, presque écoeurante, comme du pain chaud qui aurait trop cuit.
Autour de vous, un serveur s’affaire entre les tables, quelques clients sont attablés, certains accoudés au bar. 
Les aubergistes, Monsieur Bicar et Madame Mauricette, veillent d’un œil attentif sur leur établissement.
La pièce semble se refermer légèrement sur vous, comme si l’air se faisait plus lourd, plus oppressant.

À qui souhaitez-vous parler ?
",
"/fragment/entrer_parler.jpg",
"Porte voutée ouverte, lumière orangée de l’autre côté du seuil. Invitant à entrer."),

-- Acte 1 — Chapitre 3 — Serveur
(1,
"Serveur",
false,
3,
false,
"Je n’ai pas le temps de bavarder. 
Je travaille moi, si vous cherchez des informations, allez plutôt voir les patrons, et retirez-vous du passage, vous gênez ici.

Que faites-vous ?
",

NULL,
"/fragment/auberge/auberge_serveur.jpg",
"Intérieur de l’auberge en bois. Des clients sont assis à table ou au bar. 
Un serveur arrive face à vous en courant."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 1 — Chapitre 49 — Client attablé
(1,
"Client attablé",
false,
49,
false,
"“Avez-vous déjà dégusté l’une de leurs spécialités ? 
Les bretzels et les mauricettes… Ils sont excellents ! Leurs spécialités, pas les patrons.”
Il croque un morceau de bretzel avec un sourire rêveur, puis reprend, d’un ton presque philosophe : 
“En revenant de leurs voyages, ils en ont ramené d’autres… et c’est assez curieux de se dire que les hasards, les rencontres forgent une destinée. Parce que quand on a le goût de la chose, quand on a le goût de la chose bien faite, le beau geste… Parfois, on ne trouve pas la bonne personne en face qui sait l’apprécier.
Il s’interrompt, regarde par le trou de sa bretzel comme s’il venait de comprendre quelque chose… 
Puis hausse les épaules et continue de manger.
",

NULL,
"/fragment/auberge/auberge_table_client.jpg",
"Un homme seul attablé, tenant une bretzel dans une main."),

-- Acte 1 — Chapitre 27 — Client au bar
(1,
"Client au bar",
false,
27,
false,
"“Vous devriez goûter leurs cuvées, elles sont fameuses. 
Charpentées et harmonieuses, riches et subtiles… agréables et cristallines.”
Il prend une gorgée, semble réfléchir intensément, puis se penche vers vous d’un air sérieux.
“Vous savez, moi, je ne crois pas qu’il y ait de bonnes ou de mauvaises récoltes. Si je devais résumer une bouteille aujourd’hui avec vous, je dirais que ce sont de simples grains de raisin arrivés à maturité et mélangés…”
Il hoche la tête, satisfait, et se détourne pour interpeller le serveur.

",

NULL,
"/fragment/auberge/auberge_bar_client.jpg",
"Homme barbu accoudé au comptoir du bar, un verre à la main."),

-- Acte 1 — Chapitre 55 — Aubergistes
(1,
"Aubergistes",
false,
55,
false,
"Monsieur Bicar, aisément reconnaissable à sa barbe tressée en forme de bretzel et Madame Mauricette vous accueillent d’un large sourire.
“Nous tenons cet établissement réputé, nous sommes revenus depuis peu d’un long voyage à travers les différentes contrées.
Nous avons rapporté d’excellents crus, et de nouvelles spécialités. Passez donc les goûter à l’occasion !”

Puis, baissant légèrement la voix, ils ajoutent : 
“Si nous vous avons fait venir, c’est parce que nous avons remarqué des personnes ayant des comportements étranges en ville. Tels que les membres de la noblesse qui semblent converser avec des voix invisibles… Des joailliers-bijoutiers qui vendent leurs créations élaborées à des prix dérisoires ou encore certains des mineurs qui sont devenus assez méfiants, sans que l’on sache exactement pourquoi. 
Nos contacts communs vous en ont sans doute déjà touché un mot, pensez-vous pouvoir faire quelque chose ?”
",

NULL,
"/fragment/auberge/aubergistes.jpg",
"Le couple d’aubergistes souriant, Bicar à gauche ayant une barbe en forme de bretzel. 
Sa femme Mauricette à droite porte une robe avec des cheveux longs."),

-- Acte 1 — Chapitre 22 — L'École du village
(1,
"L'École du village",
false,
22,
false,
"L’école du village accueille une classe unique où les enfants de tous âges apprennent ensemble. 
Aujourd’hui, la leçon porte sur les minéraux de la région et les légendes y attenantes. En préparation de la bourse aux minéraux annuelle, qui célèbre cette année les 500 ans de l’extraction du 1er cristal d’argent. 
Elle est délivrée par Monsieur Orsik Pioche d’Argent, chef de la guilde des mineurs et invité de ce jour. 

Que faites-vous ?
",

"L’école du village accueille une classe unique où les enfants de tous âges apprennent ensemble. 
Aujourd’hui, la leçon porte sur les minéraux de la région et les légendes y attenantes. En préparation de la bourse aux minéraux annuelle, qui célèbre cette année les 500 ans de l’extraction du 1er cristal d’argent. 
Elle est délivrée par Monsieur Orsik Pioche d’Argent, chef de la guilde des mineurs et invité de ce jour. 
Une petite ritournelle vous trotte dans la tête : “Et bla, bla, bla, il n’y a rien de bien à apprendre ici. Tu sais déjà tout. Et surtout, tu as l’essentiel, tu m’a moi. Je te guiderai, ne t'inquiète pas.”

Que faites-vous ?
",
"/fragment/ecole/ecole.jpg",
"Le bâtiment de l’école du village est à deux étages, avec des colombages et surmonté d’une verrière sur le toit. 
Il est entouré d’un chemin pavé ainsi que d’espaces verts bien entretenus."),

-- Acte 1 — Chapitre 15 — Entrer dans l’école, parler avec 
(1,
"Entrer dans l’école, parler avec",
false,
15,
false,
"Vous passez le seuil de l’école et entendez la voix grave et puissante d’Orsik Pioche d’Argent résonner dans la classe. Il dispense son cours aux élèves attentifs, jusqu’à ce que sonne la récréation. 
Vous pouvez profiter de ce moment pour parler au professeur, discuter avec les élèves, tenter votre chance à une tombola 100% gagnante, ou échanger avec Orsik Pioche d’Argent.

À présent, plusieurs options s’offrent à vous :
",

"En franchissant le seuil de l’école, une étrange impression vous traverse comme si vous n’étiez pas totalement à votre place.
Vous entendez la voix grave et puissante d’Orsik Pioche d’Argent résonner dans la classe. Il dispense son cours aux élèves attentifs, jusqu’à ce que sonne la récréation. 
Vous pouvez profiter de ce moment pour parler au professeur, discuter avec les élèves, tenter votre chance à une tombola 100% gagnante, ou échanger avec Orsik Pioche d’Argent.

À présent, plusieurs options s’offrent à vous : 
",
"/fragment/entrer_parler.jpg",
"Porte voutée ouverte, lumière orangée de l’autre côté du seuil. Invitant à entrer."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 1 — Chapitre 30 — Le professeur 
(1,
"Le professeur",
false,
30,
false,
"“Nous offrons la meilleure instruction possible à nos élèves. 
L'avantage d’une classe comme celle-ci, c’est qu’elle encourage les enfants à être attentifs les uns aux autres et à s'entraider.
Et d’apprendre que ne sont pas uniquement nos capacités qui déterminent ce que nous sommes, ce sont aussi nos choix.
Aujourd’hui, nous avons la chance d’accueillir Monsieur Pioche d’Argent, chef de la guilde des mineurs. Ancien mineur lui-même, il est idéal pour expliquer la complexité du règne minéral.”
",

"“Nous offrons la meilleure instruction possible à nos élèves. 
L'avantage d’une classe comme celle-ci, c’est qu’elle encourage les enfants à être attentifs les uns aux autres et à s'entraider.
Et d’apprendre que ne sont pas uniquement nos capacités qui déterminent ce que nous sommes, ce sont aussi nos choix. 
Un murmure imperceptible s’ajoute à ses paroles, un écho ténu dans votre esprit : ”Tu connais le bon choix, suis la voie du cristal, viens me retrouver à la bourse aux minéraux.”
Aujourd’hui, nous avons la chance d’accueillir Monsieur Pioche d’Argent, chef de la guilde des mineurs. Ancien mineur lui-même, il est idéal pour expliquer la complexité du règne minéral.”
",
"/fragment/ecole/ecole_professeur.jpg",
"Dans la cour de l’école, le professeur se tient au premier plan, tandis que des enfants jouent devant le bâtiment scolaire."),

-- Acte 1 — Chapitre 19 — Les élèves 
(1,
"Les élèves",
false,
19,
false,
"Dans la cour de récréation, quelques enfants vous entourent aussitôt, curieux et bavards. 

“Le maître, il est gentil, et Orsik a fait plein de dessins sur le tableau.” dit l’un d’eux en montrant ses mains tachées de craie.
“Avec le premier fragment qu’ils ont sorti de la première mine d’argent, on pourra aller le voir à la bourse aux minéraux.” 
Une petite voix fluette intervient : 
“Les anciens disent qu’ils ont trouvé des mots écrits dans la mine :  “lumière”, “sceau”, “corruption” et “destruction”, mais on ne sait pas trop ce que ça veut dire.”
Un autre enfant renchérit d’un ton sérieux :
“On apprend plein de trucs ! Par exemple, faut pas aller jouer près des mines ou dedans, parce que c’est tout petit, et comme elles sont étroites, on peut rester coincé, et elles peuvent aussi s'écrouler. Et il y a des poches de gaz et l’air est rare et chargé de poussière, donc c’est dangereux.”

Le groupe hoche la tête d’un air entendu, et repartent jouer.
",

"Dans la cour de récréation, quelques enfants vous entourent aussitôt, curieux et bavards. 

“Le maître, il est gentil, et Orsik a fait plein de dessins sur le tableau.” dit l’un d’eux en montrant ses mains tachées de craie.
“Avec le premier fragment qu’ils ont sorti de la première mine d’argent, on pourra aller le voir à la bourse aux minéraux.” 
Une petite voix fluette intervient : 
“Les anciens disent qu’ils ont trouvé des mots écrits dans la mine :  “lumière”, “sceau”, “corruption” et “destruction”, mais on ne sait pas trop ce que ça veut dire.”
Un autre enfant renchérit d’un ton sérieux :
“On apprend plein de trucs ! Par exemple, faut surtout pas, mais pas du tout aller jouer près des mines ou dedans, parce que c’est tout petit, et comme elles sont étroites, on peut rester coincé, et elles peuvent aussi s'écrouler. Il vaut mieux aller explorer le vaste monde, tout est possible du moment qu’on a assez de cran.”

Le groupe hoche la tête d’un air entendu, et repartent jouer.
",
"/fragment/ecole/ecole_eleves.jpg",
"Dans la cour de l’école, des élèves jouent, tandis qu’un petit groupe d’enfants curieux entoure un aventurier encapuchonné, sous la surveillance d’un professeur légèrement en retrait."),

-- Acte 1 — Chapitre 54 — La tombola
(1,
"La tombola",
false,
54,
false,
"La tombola permettra à l’école de pouvoir aider à financer un voyage pour nos élèves, tout en allégeant les frais pour les parents. Et ici, personne ne repart les mains vides : c’est une tombola 100% gagnante ! Comme on dit, “100% des gagnants ont tenté leur chance”, une maxime ancestrale, paraît-il. Bref, il n’y a que ceux qui ne jouent pas qui gagnent pas. 
Les lots en jeu sont tout aussi précieux qu’emblématiques de notre région, vous y trouverez soit des pièces taillées avec les cristaux extraits de nos mines, soit des pièces de somptueux tissus de grande valeur, réputées dans toute la contrée pour leurs finesses et leurs qualités. 
Et qui sait, peut-être aurez-vous la main chanceuse aujourd’hui…

Voulez-vous tenter ?
",

"La tombola permettra à l’école de pouvoir aider à financer un voyage pour nos élèves, tout en allégeant les frais pour les parents. Et ici, personne ne repart les mains vides : c’est une tombola 100% gagnante ! Comme on dit, “100% des gagnants ont tenté leur chance”, une maxime ancestrale, paraît-il. Bref, il n’y a que ceux qui ne jouent pas qui gagnent pas. 
Les lots en jeu sont tout aussi précieux qu’emblématiques de notre région, vous y trouverez soit des pièces taillées avec les cristaux extraits de nos mines, soit des pièces de somptueux tissus de grande valeur, réputées dans toute la contrée pour leurs finesses et leurs qualités. 
Et qui sait, peut-être aurez-vous la main chanceuse aujourd’hui… “Je suis un précieux, laisse le destin choisir.”

Voulez-vous tenter ?
",
"/fragment/ecole/ecole_tombola.jpg",
"Dans une immense salle ayant des vitraux au plafond, se trouve au centre de la pièce, une grande roue avec des segments de couleur en alternance. 
Sur le côté gauche de la pièce, il y a un présentoir qui déborde de bijoux étincelants. 
Sur le côté droit, des tissus somptueux, étoffes brodées, rouleaux de soie et de velours."),

-- Acte 1 — Chapitre 63 — Gain tombola
(1,
"Gain tombola",
false,
63,
true,
NULL,

"La pièce taillée sertie que vous venez d’obtenir vibre doucement entre vos doigts, son éclat semblant pulser au rythme de votre propre cœur. Une chaleur étrange se diffuse dans votre paume et un frisson vous parcourt, alors qu’une voix douce, mais irrésistible, s’insinue dans votre esprit.
“Viens… viens me chercher à la bourse aux minéraux. Tu sauras me reconnaître. N’aie pas peur… Ensemble, nous accomplirons de grandes choses. La fortune, la gloire, le respect, tout sera à toi. Il te suffit d’un geste, d’un choix.”
L’écho de ces mots résonne en vous, persistant, comme un murmure insistant que vous ne parvenez pas à chasser entièrement de votre esprit. Vous sentez la tentation grandir en vous, comme si chaque instant passé sans suivre cette voix vous éloignait d’un destin extraordinaire.
",
"/fragment/ecole/ecole_gain.jpg",
"Un pendentif en forme de losange, orné de billes à chaque angle. 
Il renferme une nacre aux reflets bleus, avec un fragment tel une arborescence à l’intérieur."),

-- Acte 1 — Chapitre 4 — Orsik Pioche d’Argent
(1,
"Orsik Pioche d’Argent",
false,
4,
false,
"Orsik, un nain élégant, fier et de bonne stature, s’adresse à vous d’une voix grave et assurée :

“Ah, cette année, la bourse aux minéraux sera vraiment spéciale ! 
Pour la première fois, le tout 1er cristal d’argent extrait par mes ancêtres, il y a de cela 500 ans de la première mine de la ville sera exposé au public. Une occasion unique d’admirer ce trésor de la fondation de notre ville.
Aujourd’hui, cette mine est abandonnée, car elle est instable et trop dangereuse. Une inscription gravée au-dessus de l’autel a été en partie effacée avec le temps, les seuls mots qui en subsistent sont : “lumière”, “sceau”, “corruption” et “destruction”. Personne ne sait exactement ce que cela signifie… Une mise en garde ? Un message oublié ? Certains pensent que c’est juste une superstition de mineurs fatigués... Mais moi, je ne serais pas aussi catégorique...”  
",

"Orsik, un nain élégant, fier et de bonne stature, s’adresse à vous d’une voix grave et assurée :

“Ah, cette année, la bourse aux minéraux sera vraiment spéciale ! 
Pour la première fois, le tout 1er cristal d’argent extrait par mes ancêtres, il y a de cela 500 ans de la première mine de la ville sera exposé au public. Une occasion unique d’admirer ce trésor de la fondation de notre ville.
Aujourd’hui, cette mine est abandonnée, car elle est instable et trop dangereuse. Une inscription gravée au-dessus de l’autel a été en partie effacée avec le temps, les seuls mots qui en subsistent sont : “lumière”, “sceau”, “corruption” et “destruction”. Personne ne sait exactement ce que cela signifie… Une mise en garde ? Des foutaises ? Certains pensent que c’est juste une superstition de mineurs fatigués. Mais d’autres savent que certaines vérités ne doivent pas être oubliées.” 
",
"/fragment/ecole/ecole_orsik.jpg",
"Un nain en tenue d'apparat de mineur se tient seul au milieu d’une salle de classe vide. 
Sur le tableau, des croquis de cristaux à différentes étapes sont dessinés, accompagnés des mots : “lumière”, “sceau”, “corruption” et “destruction” inscrits à côté.");

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES
