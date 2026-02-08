INSERT INTO test_fonctionnement (chapter_number, title, chapter_text) VALUES
(1, "Hello Début aventure", "C'est par ici que cela commence"),
(25, "Fin d'aventure", "La sortie est par là"),
(125, "Chapitre test", "Si cela ne tenais qu'à moi");

INSERT INTO history (id, title) VALUES
(1, "Fragment");


INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- ==========
-- ACTE 1 - LA MISSION
-- ==========

-- Acte 1 — Chapitre 1 — Carte de la région d'Onenta-aux-Mines (départ)
(1,
"Carte de la région d'Onenta-aux-Mines",
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
Le bouton ci-dessous vous permettra de naviguer entre les chapitres.
",
NULL,
"/fragment/acte_1/carte_depart_onenta_aux_mines.jpg",
"Carte du secteur de jeu comme décrit dans le texte attenant."),

-- Acte 1 — Chapitre 2 — La place de la fontaine
(1,
"La place de la fontaine",
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
"/fragment/acte_1/place_fontaine.jpg",
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
"/fragment/acte_1/auberge/auberge_duergar.jpg",
"Vue extérieure de l’auberge en pierre rustique “Bretzel Duergar”, illuminée de lanternes.
Elle possède une cour pavée et quelques tables ombragées par un arbre."),

-- Acte 1 — Chapitre 34 — Entrer dans l’auberge, parler avec
(1,
"Entrer dans l’auberge",
false,
34,
false,
"Vous pénétrez dans l’auberge où règne une atmosphère chaleureuse.
L’odeur du pain chaud et des épices flotte dans l’air.

Autour de vous, un serveur s’affaire entre les tables, quelques clients sont attablés, certains accoudés au bar. Les aubergistes, Monsieur Bicar et Madame Mauricette, veillent d’un œil attentif sur leur établissement.

À qui souhaitez-vous parler ?
",

"Vous pénétrez dans l’auberge où règne une atmosphère chaleureuse.
Une odeur familière flotte dans l’air, mais elle a quelque chose d’étrange, trop sucrée, presque écoeurante, comme du pain chaud qui aurait trop cuit.

Autour de vous, un serveur s’affaire entre les tables, quelques clients sont attablés, certains accoudés au bar. Les aubergistes, Monsieur Bicar et Madame Mauricette, veillent d’un œil attentif sur leur établissement.
La pièce semble se refermer légèrement sur vous, comme si l’air se faisait plus lourd, plus oppressant.

À qui souhaitez-vous parler ?
",
"/fragment/acte_1/entrer_parler.jpg",
"Porte voutée ouverte, lumière orangée de l’autre côté du seuil. Invitant à entrer."),

-- Acte 1 — Chapitre 3 — Le serveur
(1,
"Le serveur",
false,
3,
false,
"“Je n’ai pas le temps de bavarder.
Je travaille moi, si vous cherchez des informations, allez plutôt voir les patrons, et retirez-vous du passage, vous gênez ici.”

Que faites-vous ?
",

NULL,
"/fragment/acte_1/auberge/auberge_serveur.jpg",
"Intérieur de l’auberge en bois. Des clients sont assis à table ou au bar.
Un serveur arrive face à vous en courant."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 1 — Chapitre 49 — Un client attablé
(1,
"Un client attablé",
false,
49,
false,
"“Avez-vous déjà dégusté l’une de leurs spécialités ?
Les bretzels et les mauricettes… Ils sont excellents ! Leurs spécialités, pas les patrons.”

Il croque un morceau de bretzel avec un sourire rêveur, puis reprend, d’un ton presque philosophe :
“En revenant de leurs voyages, ils en ont ramené d’autres… et c’est assez curieux de se dire que les hasards, les rencontres forgent une destinée. Parce que quand on a le goût de la chose, quand on a le goût de la chose bien faite, le beau geste… Parfois, on ne trouve pas la bonne personne en face qui sait l’apprécier.”

Il s’interrompt, regarde par le trou de sa bretzel comme s’il venait de comprendre quelque chose…
Puis hausse les épaules et continue de manger.
",

NULL,
"/fragment/acte_1/auberge/auberge_table_client.jpg",
"Un homme seul attablé, tenant une bretzel dans une main."),

-- Acte 1 — Chapitre 27 — Un client au bar
(1,
"Un client au bar",
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
"/fragment/acte_1/auberge/auberge_bar_client.jpg",
"Homme barbu accoudé au comptoir du bar, un verre à la main."),

-- Acte 1 — Chapitre 55 — Les aubergistes
(1,
"Les aubergistes",
false,
55,
false,
"Monsieur Bicar, aisément reconnaissable à sa barbe tressée en forme de bretzel et Madame Mauricette vous accueillent d’un large sourire.

“Nous tenons cet établissement réputé, nous sommes revenus depuis peu d’un long voyage à travers les différentes contrées.
Nous avons rapporté d’excellents crus, et de nouvelles spécialités. Passez donc les goûter à l’occasion !”

Puis, baissant légèrement la voix, ils ajoutent :
“Si nous vous avons fait venir, c’est parce que nous avons remarqué des personnes ayant des comportements étranges en ville. Tels que les membres de la noblesse qui semblent converser avec des voix invisibles… Des joailliers-bijoutiers qui vendent leurs créations élaborées à des prix dérisoires ou encore certains des mineurs qui sont devenus assez méfiants, sans que l’on sache exactement pourquoi.
Nos contacts communs vous en ont sans doute déjà touché un mot.

Pensez-vous pouvoir faire quelque chose ?”
",

NULL,
"/fragment/acte_1/auberge/aubergistes.jpg",
"Le couple d’aubergistes souriant, Bicar à gauche ayant une barbe en forme de bretzel.
Sa femme Mauricette à droite porte une robe avec des cheveux longs."),

-- Acte 1 — Chapitre 22 — L'école du village
(1,
"L'école du village",
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
"/fragment/acte_1/ecole/ecole.jpg",
"Le bâtiment de l’école du village est à deux étages, avec des colombages et surmonté d’une verrière sur le toit.
Il est entouré d’un chemin pavé ainsi que d’espaces verts bien entretenus."),

-- Acte 1 — Chapitre 15 — Entrer dans l’école, parler avec
(1,
"Entrer dans l’école",
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
"/fragment/acte_1/entrer_parler.jpg",
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
Et d’apprendre que ne sont pas uniquement nos capacités qui déterminent ce que nous sommes, ce sont aussi nos choix.”

Un murmure imperceptible s’ajoute à ses paroles, un écho ténu dans votre esprit : ”Tu connais le bon choix, suis la voie du cristal, viens me retrouver à la bourse aux minéraux.”

“Aujourd’hui, nous avons la chance d’accueillir Monsieur Pioche d’Argent, chef de la guilde des mineurs. Ancien mineur lui-même, il est idéal pour expliquer la complexité du règne minéral.”
",
"/fragment/acte_1/ecole/ecole_professeur.jpg",
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
"/fragment/acte_1/ecole/ecole_eleves.jpg",
"Dans la cour de l’école, des élèves jouent, tandis qu’un petit groupe d’enfants curieux entoure un aventurier encapuchonné, sous la surveillance d’un professeur légèrement en retrait."),

-- Acte 1 — Chapitre 54 — La tombola
(1,
"La tombola",
false,
54,
false,
"La tombola permettra à l’école de pouvoir aider à financer un voyage pour nos élèves, tout en allégeant les frais pour les parents.

Et ici, personne ne repart les mains vides : c’est une tombola 100% gagnante ! Comme on dit, “100% des gagnants ont tenté leur chance”, une maxime ancestrale, paraît-il. Bref, il n’y a que ceux qui ne jouent pas qui gagnent pas.
Les lots en jeu sont tout aussi précieux qu’emblématiques de notre région, vous y trouverez soit des pièces taillées avec les cristaux extraits de nos mines, soit des pièces de somptueux tissus de grande valeur, réputées dans toute la contrée pour leurs finesses et leurs qualités.

Et qui sait, peut-être aurez-vous la main chanceuse aujourd’hui…

Voulez-vous tenter ?
",

"La tombola permettra à l’école de pouvoir aider à financer un voyage pour nos élèves, tout en allégeant les frais pour les parents.

Et ici, personne ne repart les mains vides : c’est une tombola 100% gagnante ! Comme on dit, “100% des gagnants ont tenté leur chance”, une maxime ancestrale, paraît-il. Bref, il n’y a que ceux qui ne jouent pas qui gagnent pas.
Les lots en jeu sont tout aussi précieux qu’emblématiques de notre région, vous y trouverez soit des pièces taillées avec les cristaux extraits de nos mines, soit des pièces de somptueux tissus de grande valeur, réputées dans toute la contrée pour leurs finesses et leurs qualités.

Et qui sait, peut-être aurez-vous la main chanceuse aujourd’hui… “Je suis un précieux, laisse le destin choisir.”

Voulez-vous tenter ?
",
"/fragment/acte_1/ecole/ecole_tombola.jpg",
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
"/fragment/acte_1/ecole/ecole_gain.jpg",
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
"/fragment/acte_1/ecole/ecole_orsik.jpg",
"Un nain en tenue d'apparat de mineur se tient seul au milieu d’une salle de classe vide.
Sur le tableau, des croquis de cristaux à différentes étapes sont dessinés, accompagnés des mots : “lumière”, “sceau”, “corruption” et “destruction” inscrits à côté."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 1 — Chapitre 33 — La bijouterie
(1,
"La bijouterie",
false,
33,
false,
"La bijouterie de Tharadin Emérhalde, chef de la guilde des joailliers-bijoutiers, est un commerce imposant de plusieurs étages, ayant pignon sur rue.

Sa devanture est ornée de splendides incrustations de joyaux qui captent la lumière naturelle, modifiant ainsi leurs couleurs et sublimant davantage leurs éclats.

Que faites-vous ?
",

"La bijouterie de Tharadin Emérhalde, chef de la guilde des joailliers-bijoutiers, est un commerce imposant de plusieurs étages, ayant pignon sur rue.

Sa devanture est ornée de splendides incrustations de joyaux qui vibrent sous la lumière, modifiant ainsi leurs couleurs et sublimant davantage leurs éclats.

Que faites-vous ?
",
"/fragment/acte_1/bijouterie/bijouterie.jpg",
"Belle façade incrustée de joyaux, avec le nom de Tharadin Emérhalde inscrit au-dessus de la porte vitrée."),

-- Acte 1 — Chapitre 25 — Entrer dans la bijouterie, parler avec
(1,
"Entrer dans la bijouterie",
false,
25,
false,
"Vous entrez dans la bijouterie et êtes immédiatement frappé par l’éclat des bagues, bracelets, colliers et parures d’une qualité exceptionnelle.

Certains bijoux sont simplement accrochés aux murs, tandis que d’autres sont exposés sur des mannequins, ou protégés sous des présentoirs vitrés pour les pièces les plus raffinées.

Vous avez le choix entre discuter avec le vigile, des clients, l’un des vendeurs présents ou le propriétaire Monsieur Tharadin Emérhalde.

Avec qui souhaitez-vous parler ?
",

"Vous entrez dans la bijouterie, et avez un étrange sentiment de déjà-vu, comme si ce lieu vous attendait.
Vous êtes frappé par l’éclat de la marchandise d’une qualité exceptionnelle.

Certains bijoux sont simplement accrochés aux murs, tandis que d’autres sont exposés sur des mannequins, ou protégés sous des présentoirs vitrés pour les pièces les plus raffinées. Cette opulence vous donne une sensation de vertige.

Vous avez le choix entre discuter avec le vigile, des clients, l’un des vendeurs présents ou le propriétaire Monsieur Tharadin Emérhalde.

Avec qui souhaitez-vous parler ?
",
"/fragment/acte_1/entrer_parler.jpg",
"Porte voutée ouverte, lumière orangée de l’autre côté du seuil. Invitant à entrer."),

-- Acte 1 — Chapitre 5 — Le vigile
(1,
"Le vigile",
false,
5,
false,
"Un vigile se tient droit comme un piquet dans une immense salle.

“Mon rôle est essentiel, la marchandise est précieuse. Ceci dit, certaines pièces ont une drôle d’influence sur les gens. Vous n’imaginez pas ce que j’ai déjà vu ici… Mais chut, pas un mot. Je tiens à garder mon travail.”
",

NULL,
"/fragment/acte_1/bijouterie/bijoux_vigile.jpg",
"Grande salle arrondie, traversée par les rayons du soleil filtrant à travers de hautes fenêtres en vitrail.
Un vigile en uniforme se tient seul dans la pièce, entouré de bijoux exposés soit dans des présentoirs sous verre, soit sur des bustes."),

-- Acte 1 — Chapitre 17 — Des clients bijouterie
(1,
"Des clients",
false,
17,
false,
"Un couple rassemblé autour d’un présentoir vitré.

La cliente, émerveillée :
“Je suis toujours ravie de mes achats. C’est un fin travail d'orfèvrerie, ces pièces sont magnifiques ! Elles me siéent à ravir.”

Son compagnon, bien moins enthousiaste, qui se contente de régler la note :
“J’ai entendu une légende sur un homme qui conservait un anneau d’une rare beauté. Il croyait le posséder, mais au final, c’est lui qui était possédé, l’objet l’appelait, l’obsédait au point de le consumer à petit feu... Je suppose que certaines richesses ne sont pas faites pour être portées.”
",

NULL,
"/fragment/acte_1/bijouterie/bijoux_clients.jpg",
"Grande pièce avec des boiseries et des rosaces en vitrail.
Comporte des bijoux dans des vitrines avec beaucoup de clientes qui les observent."),

-- Acte 1 — Chapitre 41 — Un vendeur
(1,
"Un vendeur",
false,
41,
false,
"L’un des vendeurs s’approche avec un sourire assuré et un regard scrutateur :

“Puis-je vous être utile ?
Avec mon expertise, je suis certain que nous avons ici la pièce qui saura vous sublimer.
Nos créations, issues des riches mines alentour, sont d’une qualité exceptionnelle, et vraiment très accessibles à toutes les bourses.
Trouvons ensemble celle qui vous conviendra le mieux.
Regardez, celle-ci, par exemple, elle mettrait en valeur vos traits à la perfection”

Souhaitez-vous en acquérir une ?
",

NULL,
"/fragment/acte_1/bijouterie/bijoux_vendeur.jpg",
"Dans une partie de la boutique, un vendeur aux cheveux blonds en pétards et une petite barbichette. 
Recouvert de colliers, vous présente un bijou serti, au milieu des présentoirs."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 1 — Chapitre 36 — Achat d'un bijou
(1,
"Achat d'un bijou",
false,
36,
true,
NULL,

"Le bijou serti de cristaux que vous venez d’acquérir vibre doucement entre vos doigts, son éclat semblant pulser au rythme de votre propre cœur.
Une chaleur étrange se diffuse contre votre peau, et un frisson vous parcourt alors qu’une voix douce, mais irrésistible, s’insinue dans votre esprit.

“Viens… viens me chercher à la bourse aux minéraux. Tu sauras me reconnaître. N’aie pas peur…
Ensemble, nous accomplirons de grandes choses. La fortune, la gloire, le respect, tout sera à toi.
Ce destin t’attend déjà, il te suffit d’un choix.”

L’écho de ces mots résonne en vous, persistant, comme un murmure insistant que vous ne parvenez pas à chasser entièrement de votre esprit.
Vous sentez la tentation grandir en vous, comme si chaque instant passé sans suivre cette voix vous éloignait d’une destinée extraordinaire.
",
"/fragment/acte_1/bijouterie/bijou_achat.jpg",
"Un bijou serti repose au creux d’une main gauche ouverte.
La monture est incrustée de cristaux rouges et ornée de trois nacres bleutées suspendues.
La pierre centrale est constituée d’une nacre irisée aux reflets bleus, contenant en son centre un fragment en forme de branche."),

-- Acte 1 — Chapitre 13 — Tharadin Emérhalde
(1,
"Tharadin Emérhalde",
false,
13,
false,
"Tharadin Emérhalde, maître joaillier reconnu, examine une pierre à la loupe.
À votre approche, il relève la tête et esquisse un sourire mesuré, précis, comme chacun de ses gestes.

“Ah... un regard affûté, voilà qui me plaît. Vous savez, l’art de la joaillerie ne se limite pas à l’éclat d’une pierre ou à la finesse de son sertissage. Ce qui importe, c’est l’histoire qu’elle raconte, l’influence qu’elle exerce sur celui qui la porte… Certaines pierres sont imprégnées d’énergies singulières. Elles viennent du fond des âges, vous savez.”

Il repose délicatement la gemme qu’il observait, et marque une pause.
“Tenez, il y a bien longtemps, certains bijoux n’étaient pas seulement des ornements … mais des symboles de pouvoir, d’obsession. On dit même que certains ont façonné des destins, pour le meilleur... ou pour le pire.”

Son regard s’attarde un instant sur vous, puis un léger rire lui échappe.
“Mais enfin, ce ne sont que de vieilles légendes… après tout, une pierre n’est qu’une pierre, même si elles ont traversé les siècles, n’est-ce pas ?”
",

NULL,
"/fragment/acte_1/bijouterie/bijoutier_tharadin.jpg",
"Au milieu des étagères de pierres taillées se tient Tharadin Emérhalde.
Les cheveux blonds en arrière avec une barbe et une moustache, il vous regarde de ses grands yeux verts.
Il porte des colliers et des bracelets."),

-- ==========
-- ACTE 2 - LA BOURSE AUX MINERAUX
-- ==========

-- Acte 2 — Chapitre 6 — Se rendre à la bourse aux minéraux
(1,
"Se rendre à la bourse aux minéraux",
false,
6,
false,
"Aventuriers, vous vous apprêtez à vous rendre à la manifestation annuelle de la bourse aux minéraux.

C’est par ici.
",

"Aventuriers, vous vous apprêtez à vous rendre à la manifestation annuelle de la bourse aux minéraux.

C’est par ici.

“Oh oui, viens, viens, Aventuriers, je t’attends depuis longtemps.”
L’air devient soudainement plus lourd, chaque pas que vous faites semble résonner plus fort dans votre esprit.
La voix murmure encore, plus proche, plus pressante.
",
"/fragment/acte_2/se_rendre_bourse.jpg",
"Un panneau indiquant la direction d’un passage voûté, portant l’inscription “Bourse aux minéraux par ici”."),

-- Acte 2 — Chapitre 8 — Assez d’indices
(1,
"Assez d’indices",
false,
8,
false,
"Pensez-vous avoir réuni suffisamment d’indices afin de rejoindre la bourse aux minéraux ?
",

"Pensez-vous avoir réuni suffisamment d’indices afin de rejoindre la bourse aux minéraux ?

“Évidemment, tu m’a moi... suis ce que je te conseille et tout ira bien. Ne doute pas, n’hésite pas.”
La voix semble se glisser dans chaque recoin de votre esprit, vous donnant mal à la tête.

Une certitude, vous ne pouvez plus ignorer que l’instant de la décision approche, il n’y aura bientôt plus de retour en arrière possible.
",
"/fragment/acte_2/assez_indices.jpg",
"Un panneau comprenant cette inscription “Avez-vous suffisamment d'indices” est suspendu sous un passage voûté.
De l’autre côté, quelques personnes s’éloignent."),

-- Acte 2 — Chapitre 10 — La bourse aux minéraux
(1,
"La bourse aux minéraux",
false,
10,
false,
"Les fifres et tambours résonnent dans l’air, guidant vos pas au rythme de leurs mélodies.

Vous voilà plongé dans la rue principale, cœur battant de la manifestation.

Au centre de la foule, vous apercevez Kathéra Ribeaupierre, la matriarche de la ville, se tenant près d’un objet mystérieusement voilé.

Non loin de là, le regard insistant d’un inconnu énigmatique en marge de la foule vous transperce.

Que faites-vous ?
",

"Les fifres et tambours résonnent dans l’air, guidant vos pas au rythme de leurs mélodies.

Vous voilà plongé dans la rue principale, cœur battant de la manifestation.
Vous avez un étrange sentiment de déjà-vu, comme si ce lieu vous attendait.
Un instant, vous croyez entendre votre nom soufflé par le vent, mais ce n’est qu’une illusion, n’est-ce pas ?

Au centre de la foule, vous apercevez Kathéra Ribeaupierre, la matriarche de la ville, se tenant près d’un objet mystérieusement voilé.

Non loin de là, le regard insistant d’un inconnu énigmatique en marge de la foule vous transperce.

Que faites-vous ?
",
"/fragment/acte_2/bourse_aux_mineraux.jpg",
"Au cœur d’une foule dense dans une rue en fête, une estrade entourée de gardes se dresse au centre.
Sur celle-ci se tient Kathéra Ribeaupierre, près d’un objet lumineux recouvert d’un voile serti de cristaux.
À l'écart de la foule, se trouve un inconnu encapuchonné qui vous observe."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 2 — Chapitre 62 — Kathéra Ribeaupierre
(1,
"Kathéra Ribeaupierre",
false,
62,
false,
"Les musiciens cessent peu à peu de jouer, laissant place à Kathéra Ribeaupierre, la matriarche d’Onenta-aux-Mines.

D’un regard assuré, elle balaie la foule, puis, d’une voix claire et solennelle, s’adresse à l’assemblée :
 
“Mes très chers concitoyens, et amis des royaumes voisins.
Vous avez parcouru de grands chemins pour venir jusqu’ici.
Je suis heureuse de vous accueillir dans notre ville, pour une nouvelle édition de notre bourse aux minéraux annuelle.
En cette année si particulière pour notre cité, je suis honorée de pouvoir vous présenter ce qui nous réunit aujourd’hui, voici le tout premier cristal d’argent extrait de la première mine découverte il y a de cela cinq siècles.
C’est une relique d’une valeur inestimable.
Profitez de cet événement, n’hésitez pas à aller visiter la ville et à vous désaltérer à la taverne avec nos produits locaux.”

Elle marque une courte pause, puis d’un geste, retire le voile qui recouvrait le fragment de cristal d’argent.

Le minéral capte et réfracte les éclats du jour, projetant de délicats reflets argentés autour de lui.
L’espace d’un instant, un étrange frisson vous parcourt, une sensation fugace, difficile à décrire.

L’assistance, fascinée, retient son souffle un instant, impressionnée par la beauté de la relique.
",

"Les musiciens cessent peu à peu de jouer, laissant place à Kathéra Ribeaupierre, la matriarche d’Onenta-aux-Mines.

D’un regard assuré, elle balaie la foule, puis, d’une voix claire et solennelle, s’adresse à l’assemblée :
 
“Mes très chers concitoyens, et amis des royaumes voisins.
Vous avez parcouru de grands chemins pour venir jusqu’ici.
Je suis heureuse de vous accueillir dans notre ville, pour une nouvelle édition de notre bourse aux minéraux annuelle.
En cette année si particulière pour notre cité, je suis honorée de pouvoir vous présenter ce qui nous réunit aujourd’hui, voici le tout premier cristal d’argent extrait de la première mine découverte il y a de cela cinq siècles.
C’est une relique d’une valeur inestimable.
Profitez de cet événement, n’hésitez pas à aller visiter la ville et à vous désaltérer à la taverne avec nos produits locaux.”

Elle marque une courte pause, puis d’un geste, retire le voile qui recouvrait le fragment de cristal d’argent.

Le minéral capte et réfracte les éclats du jour, projetant de délicats reflets argentés autour de lui.
L’espace d’un instant, un étrange frisson vous parcourt, une sensation fugace, difficile à décrire.
“Enfin, tu peux me voir… approche” reprend la voix dans votre esprit.

L’assistance, fascinée, retient son souffle un instant, impressionnée par la beauté de la relique.
",
"/fragment/acte_2/image_non_definie.jpg",
"Illustration non définie pour ce chapitre"),

-- Acte 2 — Chapitre 56 — Un inconnu énigmatique (=> Vol bourse)
(1,
"Un inconnu énigmatique",
false,
56,
false,
"Un individu de haute stature, en retrait de la foule, vous observe très attentivement.
Son regard perçant semble sonder vos intentions.

Drapé dans un long manteau de fourrure, il s’approche silencieusement et murmure :

“Le cristal ne devrait pas rester ici.
Apportez-le-nous, et nous saurons vous récompenser.
Une belle somme d’argent… ou un service qui pourrait vous être utile.”

Sa voix a quelque chose d’étrange, comme si plusieurs personnes parlaient en même temps, cependant l’agitation ambiante de la manifestation vous empêche d’en être certain.

L’individu encapuchonné reste immobile, attendant votre réponse.

Que décidez-vous ?
",

NULL,
"/fragment/acte_2/image_non_definie.jpg",
"Illustration non définie pour ce chapitre"),

-- Acte 2 — Chapitre 44 — Accepter le vol (=> Fragment bourse)
(1,
"Accepter le vol",
false,
44,
false,
"Le cristal repose sur un socle serti de joyaux, légèrement surélevé.

Autour, la foule vaque à ses occupations, discutant ensemble, ou se pressant devant les nombreux étals des marchands.
Non loin, les gardes discutent entre eux en prenant un café.

Personne ne semble vraiment vous prêter attention.
Vous vous approchez doucement, l’air de rien, attiré par cette relique inestimable.

Puis, d’un geste sûr, presque naturel, vous tendez la main, et refermez vos doigts dessus.
Vous venez de le prendre.

Et maintenant ?
",

"Le cristal repose sur un socle serti de joyaux, légèrement surélevé.

Autour, la foule vaque à ses occupations, discutant ensemble, ou se pressant devant les nombreux étals des marchands.
Non loin, les gardes discutent entre eux en prenant un café.

Personne ne semble vraiment vous prêter attention.
Vous vous avancez doucement, l’air de rien, irrémédiablement attiré par cette relique inestimable.
Vous sentez le bijou que vous portez sur vous pulser de plus en plus vite, de plus en plus fort, à mesure que vous approchez du fragment. Résonnant au rythme d’un battement qui n’est pas le vôtre. Une chaleur étrange irradie de votre paume alors que vous vous approchez du fragment.
Tout semble ralentir autour de vous.
Les voix de la foule deviennent lointaines, étouffées, comme si vous étiez immergé sous l’eau. Seule cette pulsation demeure, intense, obsédante.

Puis, d’un geste sûr, presque naturel, vous tendez la main, et refermez vos doigts dessus.
Vous venez de le prendre.

Et maintenant ?
",
"/fragment/acte_2/image_non_definie.jpg",
"Illustration non définie pour ce chapitre"),

-- Acte 2 — Chapitre 9 — Refuser le vol
(1,
"Refuser le vol",
false,
9,
false,
"Quelque chose d’indescriptible vous dérange dans l’attitude de cette personne.
Vous décidez donc de refuser sa proposition.
Un silence. Il vous fixe longuement, sans un mot.
Puis disparaît, se fondant dans la foule comme s’il n’avait jamais été là.

Pourtant, un curieux sentiment vous serre la gorge.
Comme si une porte venait de se refermer, tout doucement derrière vous.
Peut-être auriez-vous dû accepter… ou peut-être est-ce mieux ainsi.
Il est communément admis que de mauvaises choses arrivent aux gens qui essayent de trop bien faire.

En tout cas, c’est une jolie manifestation qui se déroule dans cette ville.
",

NULL,
"/fragment/acte_2/refuser_vol_bourse.jpg",
"Rue médiévale entourée de bâtiments avec des échoppes de part et d'autre sous un ciel gris.
De dos, vous vous éloignez d’une personne dans un manteau à capuche."),

-- Acte 2 — Chapitre 51 — Dénonciation garde
(1,
"Dénonciation garde",
false,
51,
false,
"Vous vous rendez auprès de la garde pour dénoncer cet inconnu.

“Il n’y a pas eu d’incidents, que voulez-vous que l’on y fasse ?
Allez, circulez et laissez-nous travailler.”

Vous insistez, mais ils haussent les épaules, visiblement agacés.

Derrière eux, la ville continue de vibrer au rythme de la fête, indifférente à vos inquiétudes.
",

"Vous vous rendez auprès de la garde pour dénoncer cet inconnu.

”Il n’y a pas eu d’incidents, que voulez-vous que l’on y fasse ?
Laissez-nous travailler.”

Vous insistez, mais ils haussent les épaules, visiblement agacés.

Derrière eux, la ville continue de vibrer au rythme de la fête, indifférente à vos inquiétudes.

Puis, une voix s'immisce dans votre esprit :
“Accepte donc ce que l’inconnu te propose… viens me chercher... je t’offrirai tout ce que tu désires…”

Un frisson vous parcourt, tout semble légèrement vaciller autour de vous.
Le bruit ambiant s’efface, ne laissant que cette promesse résonner en vous.
",
"/fragment/acte_2/denoncer_gardes.jpg",
"Rue médiévale festive avec une foule qui s’attarde auprès des échoppes.
Trois gardes en armures se tiennent au centre de celle-ci."),

-- ==========
-- ACTE 3 - LES CHOIX POUR LA FIN
-- ==========

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 3 — Chapitre 59 — Tout recommence
-- (valable pour les chapitres : Refuser le vol (9), Pris de remords (53), Les Kobolds (58), Faire demi-tour (23), Obtempérer Sélémar (64), Se battre brigands (31), En joue milice (60))
(1,
"Tout recommence",
false,
59,
false,
"Aventurier, vous êtes resté là un moment, immobile, à repenser aux choix qui vous ont mené ici.

Peut-être avez-vous échoué. Peut-être avez-vous réussi... ou peut-être que cela n’avait aucune importance.

Une brise étrange vous frôle, comme un murmure dans l’air :
”Ce n’est pas encore terminé”

Et soudain, tout recommence.
",

"Aventurier, vous êtes resté là un moment, immobile, à repenser aux choix qui vous ont mené ici.

Le fragment n’est plus entre vos mains.
Mais son influence, elle, persiste.

Peut-être avez-vous échoué. Peut-être avez-vous réussi... ou peut-être que cela n’avait aucune importance.

Une brise étrange vous frôle, comme un murmure dans l’air :
”Ce n’est pas encore terminé”

Et soudain, tout recommence.
",
"/fragment/acte_3/tout_recommence.jpg",
"Vous êtes seul sur une plaine de blé, en face des montagnes.
Le ciel est nuageux, ils forment des cercles au-dessus de vous dans un dégradé de couleurs allant du bleu au rose en passant par du jaune."),

-- Acte 3 — Chapitre 57 — Et maintenant ? (= Remonter le temps)
(1,
"Et maintenant ?",
false,
57,
true,
NULL,

"Vous avez le fragment de cristal avec vous, personne ne vous a vu pour l’instant, trop occupés à vaquer à leurs occupations. Mais le vol de cette relique historique ne laissera personne indifférent très longtemps.

Vous sentez le fragment palpiter entre vos mains comme si vous y teniez un cœur.
Et entendez distinctement dans votre esprit :
“Emmène-moi loin d’ici, ensemble nous allons conquérir le monde, tu seras riche et puissant.”

Une chose est sûre, vous ne pourrez pas garder ce fragment longtemps sans que la foule ne vous voie.
Une sensation de vertige ou de malaise vous étreint lors du contact avec le cristal :
“Vous ressentez la tentation du pouvoir absolu, n’est-ce pas ? Une fois que l’on y a goûté, il est difficile de s’en détacher.”

Et maintenant, où allez-vous ?
Les choix se dressent devant vous, et chaque direction vous entraîne un peu plus loin dans l’inconnu…
",
"/fragment/acte_3/et_maintenant.jpg",
"Des panneaux sur un piquet en bois à la sortie du village indiquent les directions possibles."),

-- Acte 3 — Chapitre 53 — Pris de remords
(1,
"Pris de remords",
false,
53,
false,
NULL,

"Retournant discrètement au centre de la place, vous replacez le fragment sur son socle, au cœur de la bourse aux minéraux. Le geste est précis, presque mécanique, comme si cela pouvait effacer ce qui a été fait. Mais au fond de vous, une question vous taraude, l’avez-vous réellement fait pour la bonne raison ?

Peut-être que le vol était inexcusable. Peut-être que de rendre ce fragment est ce qu’il y a de mieux à faire. Mais en même temps, vous sentez une étrange attirance à ne pas abandonner ce pouvoir.

Votre conscience vous murmure que l’on ne peut s’approprier une relique de cette importance.
Il y a une part de lumière et d’ombre en chacun de nous. Ce qui compte, c’est celle que l’on choisit de montrer dans nos actes. Voilà ce que l’on est vraiment.

Une part de vous se sent plus légère, l’autre plus lourde.
Peut-être que vous avez fait le bon choix… ou peut-être pas…
",
"/fragment/acte_3/pris_de_remords.jpg",
"Vous êtes seul, tête baissée, au milieu de la forêt avec des arbres décharnés, le soleil couchant vous éclaire."),

-- Acte 3 — Chapitre 58 — Les Kobolds (= Le rapporter à l’inconnu)
(1,
"Les Kobolds",
false,
58,
false,
NULL,

"Vous revenez à l’endroit où vous aviez rencontré l’inconnu.
Lorsqu’il vous aperçoit, il sort lentement de l’ombre.
Vous lui tendez le fragment, vous rappelant sa promesse : une belle somme d’argent ou un service utile.

Un bruissement étrange se fait entendre sous son manteau.
Soudain, le tissu glisse au sol, révélant… trois petits kobolds, empilés les uns sur les autres !
D’un geste vif, ils s’emparent du fragment et détalent à toute vitesse, avant que vous ne puissiez réagir, disparaissant dans la foule avec leur butin…

Avant de disparaître, l’un d’eux se retourne et vous lance avec un clin d'œil :
“Merci bien ! Ce n’est pas une simple pierre, c’est un vestige d’une époque oubliée.
Plus besoin de toi maintenant, tchao l’ami !”

Vous restez planté là, sans argent, sans service… et surtout sans le fragment.

Mais au moins, vous avez appris une chose : c’est de ne jamais faire confiance à une silhouette encapuchonnée dans une ruelle.
",
"/fragment/acte_3/kobolds.jpg",
"Trois kobolds empilés les uns sur les autres sous un manteau, au premier plan d’une ruelle commerçante floue.
Leurs têtes sont bien visibles, avec des museaux évoquant ceux de petits dragons, et ils sont couverts d’écailles rouges.
Chacun affiche un sourire sournois."),

-- Acte 3 — Chapitre 23 — Faire demi-tour
-- (valable pour les chapitres : La mine (12), L'intérieur de la mine (14), L'autel (52), La prophétie (42), Les brigands (38), La milice d'Asterakie (48), La clairière (29))
(1,
"Faire demi-tour",
false,
23,
false,
NULL,

"“Cette situation me fait beaucoup trop peur. Je m’en vais, et tant pis pour cette belle aventure.”

Vous tournez les talons, le cœur battant, laissant derrière vous tout ce que vous auriez pu devenir... et bien plus encore.

C’est votre choix.

Le prix du pouvoir est parfois le même que celui de la liberté à savoir tout abandonner.
",
"/fragment/acte_3/demi_tour.jpg",
"Panneau noir et blanc sale indiquant “demi-tour”."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 3 — Chapitre 65 — C’est terminé
(1,
"C’est terminé",
false,
65,
false,
NULL,

"Vous avez fait des choix tout au long de votre aventure, et celle-ci touche maintenant à sa fin.

Peut-être avez-vous sauvé ce monde, ou peut-être que vous l’avez précipité sa chute, qui sait.

“Chacun porte en lui une part d’ombre et de lumière.
Ce sont nos actes et les choix que nous faisons qui révèlent qui nous sommes vraiment.”

Une chose est sûre, votre chemin s’arrête ici.

Merci à vous d’avoir suivi cette histoire jusqu’à l’une de ses fins possibles.
",
"/fragment/acte_3/fin_globale.jpg",
"Le mot “FIN” inscrit sur un coucher du soleil avec des teintes roses et violettes au-dessus de collines embrumées."),

-- Acte 3 — Chapitre 47 — Vers les anciennes mines
(1,
"Vers les anciennes mines",
false,
47,
false,
NULL,

"Vous décidez de vous diriger vers les anciennes mines d’Argent nichées au cœur des montagnes éponymes.
Elles ont été exploitées durant plusieurs années, puis abandonnées depuis des lustres.

Le paysage qui vous entoure est magnifique, et la vue sur la vallée se dévoile peu à peu à mesure que vous grimpez.
Pourtant, vous ressentez comme une forme de résistance.
Peut-être est-ce l’air frais de la montagne, ou le souvenir de votre échange avec les enfants de l’école qui vous revient en mémoire… ou bien serait-ce autre chose, de plus enfoui ?
",
"/fragment/acte_3/mine/carte_mine_abandonnee.jpg",
"La carte de la région d’Onenta-aux-Mines, avec une loupe qui zoom sur une mine abandonnée dans les Montagnes d’Argent."),

-- Acte 3 — Chapitre 12 — La mine
(1,
"La mine",
false,
12,
false,
NULL,

"Vous arrivez à l’emplacement de la première mine exploitée, celle qui a donné sa renommée à Onenta-aux-Mines avec la découverte du cristal d’argent, il y a cinq siècles.

Vous constatez que l’entrée est constituée d’un passage étroit, encadré par des poutres en bois et un mur de pierre. Le sol est sableux, limé par les nombreux passages des ouvriers et des wagonnets dont les rails sont encore visibles.

Alors que vous vous apprêtez à avancer, une petite voix douce mais moqueuse s’insinue dans vos pensées :
“Dis, tu ne vas tout de même pas faire comme tous ces mineurs de pacotille et aller t’enterrer là-dedans, alors que tu pourrais aller explorer le monde et ses richesses.”

Que décidez-vous ?
",
"/fragment/acte_3/mine/mine_entree.jpg",
"L’entrée étroite d’une ancienne mine, soutenue par des poutres en bois, encadrée d’un mur de pierres irrégulières.
Le sol est caillouteux, lissé par les allées et venues des mineurs, et traversé par deux rails qui sortent de l’ouverture."),

-- Acte 3 — Chapitre 14 — L’intérieur de la mine
(1,
"L’intérieur de la mine",
false,
14,
false,
NULL,

"Après avoir pénétré à l’intérieur, vous découvrez plusieurs petites galeries étroites, façonnées sous les coups réguliers des pointerolles dans la roche.

Vous continuez d’avancer.
Les parois sont tantôt lisses, tantôt rugueuses selon les outils utilisés, que ce soit des pics ou des burins. Certaines se sont partiellement écroulées.

L’air est rare et chargé de poussières, rendant la respiration difficile.
Vos sens commencent à s’engourdir doucement… ou est-ce votre esprit qui vacille ?

La voix revient, toujours moqueuse :
“Mais quelle idée d’aller s’y enterrer, non vraiment pas, ce n’est pas bon pour votre teint.
Un voyage au grand air vous ferait le plus grand bien.”

Au loin, vous entendez résonner le bruit d’une rivière, quelque part dans les profondeurs.

Souhaitez-vous poursuivre votre chemin ?
",
"/fragment/acte_3/mine/mine_interieur.jpg",
"Couloir sombre et exigu avec des parois irrégulières.
Plusieurs sortes d'entrées possibles pour s'enfoncer dans la mine."),

-- Acte 3 — Chapitre 52 — L’autel
(1,
"L’autel",
false,
52,
false,
NULL,

"La voix poursuit, plus pressante :
“Tu ne vas tout de même pas t’enfoncer dans ces galeries comme ces pauvres fous de mineurs… si ?”

Guidé par le bruit de l’eau, vous progressez à travers plusieurs méandres jusqu’à parvenir dans une cavité bien plus vaste que les précédentes.
Elle semble se trouver au cœur de tout ce réseau de galeries.

La rivière serpente tranquillement sur le côté. Un faisceau de lumière, tombant d’un ancien puits écroulé à la surface, illumine au fond, une roche sculptée qui semble être un autel.

En vous approchant prudemment, vous découvrez une forme octogonale avec, en son centre, un étrange emplacement, comme un socle en attente.
Vous apercevez des symboles gravés sur la paroi qui ressemblent à une inscription partiellement effacée, vous arrivez à déchiffrer les mots “lumière”, “seau”, “corruption” et “destruction”, mais le reste des runes vous échappe.

L’air devient plus lourd et une fatigue inhabituelle vous envahit.

La voix revient, plus douce, presque compatissante :
“Je t’avais averti qu’il valait mieux pour toi de ne pas t’y aventurer, mais tu peux encore rebrousser chemin. Rien de bon ne t’attend ici.”

Que faites-vous ?
",
"/fragment/acte_3/mine/mine_autel.jpg",
"Caverne bordée par une rivière, une sorte d’autel se tient dans un rayon de lumière naturelle devant une paroi de pierre."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 3 — Chapitre 42 — La prophétie mine (= Suivre votre intuition)
(1,
"La prophétie",
false,
42,
false,
NULL,

"Vous avez l’intuition qu’il faut vous débarrasser de ce fragment, mais ne savez pas pourquoi.
L’air devient très difficile à respirer… ou est-ce autre chose ?

La voix reprend, angoissée :
“Je t’avais dit de quitter cet endroit… Qui es-tu, toi qui n’écoutes pas ?
Il te reste une chance de te sauver, et d’avoir tout ce que tu souhaites.
Partons d’ici.”

Vous vous rappelez les mots d’Orsik Pioche d’Argent :
“Personne ne sait exactement ce que cela signifie… Une mise en garde ?”
Et si c’était vraiment cela ? Un avertissement… contre ce qu’ils ont trouvé ici.
Avec la raréfaction de l’air et la fatigue, il devient difficile d’avoir les idées claires.

Vous prenez le fragment et, avant de le poser au centre de l’autel, la voix résonne encore une fois :
“Tu ne devrais pas faire ça.
Je t’offre tout ce que tu souhaites.
C’est une mauvaise décision.”

Une fois le fragment posé, une vibration légère parcourt la salle. Un champ lumineux se matérialise autour du cristal, formant une sorte de barrière qui semble absorber son influence néfaste.

Vous ressentez un soulagement immédiat, comme si l’air devenait plus respirable et qu’une partie du poids de la fatigue avait disparu.

Vous remarquez que les runes de l’inscription se sont illuminées d’une lumière vive et surnaturelle.
Voici ce qui est inscrit :
“La Lumière purifiera les ténèbres, ce Sceau enfermera la Corruption, la Destruction est la seule voie pour que le monde ne lui appartienne pas.”

Que décidez-vous ?
",
"/fragment/acte_3/mine/mine_prophetie_autel.jpg",
"Un aventurier encapuchonné se tient devant le même autel.
Une lumière jaune, enveloppée dans un champ de force bleuté, repose sur l’autel.
Un texte prophétique gravé s’illuminant apparaît sur la paroi de pierre."),

-- Acte 3 — Chapitre 61 — Destruction de la mine
(1,
"Destruction de la mine",
false,
61,
false,
NULL,

"“La Destruction est la seule voie pour que le monde ne lui appartienne pas.”
Et si c’était vraiment cela, la seule solution pour sauver tout le monde ?
Vous avez fait votre choix.

En profitant des poches de gaz accumulées dans la mine, vous parvenez à provoquer une étincelle.
L’explosion est immédiate, amplifiée par la concentration de gaz présente dans la cavité.
Des blocs de pierres s’effondrent de toutes parts dans un vacarme assourdissant, ensevelissant et détruisant le fragment primaire.

Vous arrivez à vous extirper de justesse en vous faufilant au dernier moment dans les galeries.
Vous en réchappez… vivant.
",
"/fragment/acte_3/mine/mine_explosion.jpg",
"Un aventurier encapuchonné s’enfuit en courant.
Une violente explosion a lieu derrière lui, projetant des pierres dans la mine."),

-- Acte 3 — Chapitre 7 — Retour vers la surface - Fin mine
(1,
"Retour vers la surface",
false,
7,
false,
NULL,

"Vous vous en êtes sorti indemne, de justesse.
Les poumons encore serrés, la respiration courte et les mains couvertes de poussière.

Vous le sentez, quelque chose a changé. Peut-être le monde… peut-être vous.
Mais vous êtes vivant.

Debout sur les ruines de la mine, autour de vous des décombres subsistent.
Le fragment est détruit.

Vous gravez sur une stèle, le symbole du cristal se tenant au-dessus d’un octogone, représentant l’autel, marquant l’emplacement de la mine.
Un témoignage pour que les générations futures n’oublient pas.

Devant vous, la vallée s’étend, paisible, comme s’il ne s’était rien passé.
Le monde ignore peut-être ce que vous avez accompli… Mais vous, vous le savez.

Bravo Aventurier, vous avez empêché une grande catastrophe.
Félicitations.
",
"/fragment/acte_3/mine/fin_mine.jpg",
"Un aventurier encapuchonné se tient immobile, dos à une stèle gravée d’un symbole en forme de cristal à l’entrée de la mine écroulée.
Il contemple la vallée, où la Lapinette poursuit son cours paisible jusqu’à Onenta-aux-Mines."),

-- Acte 3 — Chapitre 32 — Vers Sélémar
(1,
"Vers Sélémar",
false,
32,
false,
NULL,

"Vous décidez de vous diriger vers Sélémar, la grande cité commerciale réputée pour ses nombreux comptoirs animés et ses marchands de tous horizons.

Quelque chose vous y attire, ou serait-ce le fragment, qui cherche à vous guider ?

La route est agréable, longeant le petit chemin de halage, bordé d’un côté par la Lapinette, et de l’autre par la forêt.
La rivière est paisible en cette saison. Elle serpente au travers de la vallée, bordée par quelques arbres qui l’ombragent par endroits. L’eau clapote contre les berges, et l’air embaume la terre et la sève.

Tout semble calme.
Et pourtant, une étrange tension flotte dans l’air.
Difficile à expliquer, comme une impression d’être observé. Ou peut-être est-ce simplement l’excitation de vous rendre dans cette ville débordante d’énergie.

Et pourtant vous avancez.
",
"/fragment/acte_3/selemar/carte_selemar.jpg",
"La carte de la région d’Onenta-aux-Mines, avec une loupe qui zoom sur Sélémar à la confluence des cours d’eau."),

-- Acte 3 — Chapitre 38 — Les brigands (= Le virage)
(1,
"Les brigands",
false,
38,
false,
NULL,

"Vous continuez de suivre le sentier, mais cette étrange impression ne vous quitte pas, à mesure que vous progressez.

Quelque chose dans l’air change.

Des silhouettes se dressent à contre-jour.
Une voix grave s’élève soudain dans l’air :
“Vous ne passerez pas !”

Au détour d’un virage, un groupe de six brigands de grand chemin vous barre la route.
Ils prennent tout l'espace. Chapeaux de cow-boy vissés sur la tête et pistolets aux poings.
Aucun moyen de passer.

Leur chef s’avance d’un pas, il vous harangue d’une voix forte, sûr de lui, pendant que les autres vous observent en silence.

“Je vous somme de nous remettre tout ce que vous avez en votre possession, bourses, cristaux, armes, objets de quelque valeur, afin que nous complétions notre butin.
On ne fait pas cela par plaisir, vous savez, mais les temps sont durs.”

Le fragment frémit, est-ce lui ou votre propre instinct qui vous souffle de ne rien lâcher ?

Parfois, les seuls choix qu'on nous laisse sont mauvais.
Mais on doit quand même choisir.

Que faites-vous ?
",
"/fragment/acte_3/selemar/selemar_brigands.jpg",
"Six brigands armés de pistolets et d’une corde surveillent la route dans un virage sur un chemin de terre.
Ils portent des chapeaux de cow-boy.
Un coffre en bois, contenant leur butin (de l’or ainsi que des pierres précieuses) est ouvert devant eux.
À gauche coule une rivière, à droite commence la lisière d’une forêt.
Des montagnes se dressent à l’horizon."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 3 — Chapitre 64 — Obtempérer
(1,
"Obtempérer",
false,
64,
false,
NULL,

"Vous avez décidé d’obéir et de faire ce que vous demande le chef des brigands.

Vous vous approchez doucement du groupe.
Mettez un genou à terre, puis vous obéissez sans protester.

Vous disposez devant vous toutes vos affaires : bourse, armes, cristal.
Vous les sortez lentement, sans gestes brusques, afin de ne pas alarmer les brigands.
Ils ne vous lâchent pas du regard, en jouant avec leurs pistolets.

Vous avez la sensation que le fragment vous a été comme arraché. Ce qui est une impression fort désagréable.
Il brille maintenant devant vous.

Les brigands rassemblent le tout, puis s’éloignent en marmonnant entre eux.

Vous restez seul, dépouillé.

Le fragment est parti, mais une part de vous sait qu’il n’a pas dit son dernier mot.
",
"/fragment/acte_3/selemar/selemar_obtemperer.jpg",
"Six brigands armés vous encadrent et vous surveillent.
À genoux sur le chemin face à eux, vous avez déposé près d’un coffre ouvert : une épée, trois dagues ainsi qu’une grosse bourse.
Le fragment que vous possédiez émet une lueur devant vous."),

-- Acte 3 — Chapitre 31 — Se battre brigands
(1,
"Se battre",
false,
31,
false,
NULL,

"Vous avez choisi de vous battre.

Était-ce vraiment un bon choix ?

Les brigands ne bougent pas, mais vous sentent prêts.
En une fraction de seconde, tous vous braquent, sans trembler, prêts à tirer au moindre geste.

“Nous sommes plus nombreux, avec de l’expérience et mieux armés.
Pensiez-vous vraiment pouvoir vous mesurer à nous ?”

Vous esquissez un mouvement.
Un colt verrouillé vous répond.

Que se passe-t-il…
",
"/fragment/acte_3/selemar/selemar_se_battre.jpg",
"Six brigands armés pointent leurs pistolets vers vous dans un virage sur un chemin de terre.
Un coffre en bois, ouvert devant eux, contient leur butin : de l’or ainsi que des cristaux multicolores.
La rivière borde le côté gauche, la forêt commence à droite, et des montagnes s’élèvent en l’arrière-plan."),

-- Acte 3 — Chapitre 45 — Sauter dans la Lapinette
(1,
"Sauter dans la Lapinette",
false,
45,
false,
NULL,

"Vous hésitez un instant, mieux vaut éviter les ennuis.
Ce n’est pas le moment de déclencher une bagarre.

L’atmosphère est pesante, mais sans violence. Il vous faut une échappatoire.

Une petite voix, ou peut-être le fragment lui-même, vous souffle qu’après tout ce que vous avez déjà traversé, fuir n’est pas de la lâcheté, mais de la sagesse.
C’est peut-être, au contraire, la meilleure des options.

Alors vous le faites.
Tout le monde doit mourir un jour. Mais pas aujourd’hui.

Vous décidez de plonger dans la rivière.
Doucement, vous vous rapprochez du bord, puis vous sautez.

Avec beaucoup de chance, vous évitez les rochers.
L’eau fraîche vous saisit, vous emportant avec elle.

Les brigands vous regardent, silencieusement, tandis que vous êtes emporté par le courant, quelques-uns vous suivent en courant le long de la rive durant un moment.

Vous vous laissez porter par le courant, ballotté par les flots jusqu’à Sélémar.
",
"/fragment/acte_3/selemar/selemar_saut_riviere.jpg",
"Paysage composé, d’un côté de montagnes, de l’autre d’un chemin avec quelques arbres et trois brigands courant dans le sens de la rivière se trouvant entre les deux."),

-- Acte 3 — Chapitre 18 — Les comptoirs commerciaux
(1,
"Les comptoirs commerciaux",
false,
18,
false,
NULL,

"Avec le courant moins fort dans la plaine, vous parvenez à vous hisser hors de l’eau à hauteur de Sélémar.
Objectif atteint, vous avez réussi à échapper aux brigands.

Vous vous rendez aux comptoirs commerciaux de la ville, comme initialement prévu, sauf qu’ils se trouvent sur l’autre rive.
Au moins vous aurez le temps de vous sécher, cette ville est si vaste.

Ici, c’est une véritable plaque tournante du commerce régional, on y trouve de tout et tout se négocie.
Certaines échoppes sont directement installées sur les docks, quand d’autres se trouvent dans de grands hangars.
Grâce à la Hase, le grand fleuve qui coule à proximité, les marchandises peuvent circuler librement dans tout l’Empire.

Vous êtes à la recherche d’un commerçant bien particulier.
Il est le plus réputé dans son domaine et, d’après les bruits qui courent, attention non pas que vous prêtiez foi aux rumeurs, il paraît qu’il paye généreusement.
",
"/fragment/acte_3/selemar/selemar_comptoirs.jpg",
"Au soleil déclinant derrière les montagnes, un fleuve où naviguent des bateaux de toutes tailles, dont certains sont amarrés, sépare les deux rives d’une ville.
D’un côté une ville dense, de l’autre des comptoirs commerciaux avec auvents et étals de marchands."),

-- Acte 3 — Chapitre 40 — La décadence de Sélémar (= L’équilibre vacille)
(1,
"La décadence de Sélémar",
false,
40,
false,
NULL,

"Après quelque temps de recherche parmi tous les marchands, vous trouvez enfin celui auquel vous vous attendiez.
Il a un petit étal qui ne paye pas de mine, composé de quelques tables en bois non abritées, elles sont recouvertes de cristaux en tous genres.
Mais il ne faut pas s’arrêter aux apparences, c’est le meilleur dans son domaine d’expertise.

Vous lui présentez le fragment que vous avez subtilisé.
Et attendez son verdict.

Il prend son temps pour l’examiner sous toutes les coutures.
Il vous propose un prix, vous enchérissez un peu comme de coutume.
Et à votre grande surprise, il vous tend une grosse bourse sans même négocier, chose rare, que vous acceptez sans discuter.
Puis, il en brise un morceau, et à votre stupéfaction, à l’endroit de la cassure, le fragment se régénère.

On ne joue pas impunément avec des forces qui nous dépassent.
Elles ne se laissent pas contenir.
Vous n’étiez qu’une pièce de plus sur l’échiquier.

Le marchand en a fait commerce, d’autres l'ont suivi, et le fragment s’est répandu.
L’Empire est tombé le premier. Puis les royaumes, un à un, sur tous les continents.
Le cristal parle toutes les langues, murmure à chacun des rêves de grandeur et de richesse.

Peut-être est-ce un mal pour un bien. Vous n’êtes plus sous emprise directe.
Mais vous avez aidé à ouvrir la porte.

Merci pour votre aide précieuse, Aventurier. Profitez bien de votre argent.
Le cristal vous remercie également.
",
"/fragment/acte_3/selemar/fin_selemar.jpg",
"Un aventurier encapuchonné échange un objet lumineux, invisible entre ses mains, contre une grosse bourse tendue par un marchand de cristaux richement vêtu, sur un marché au crépuscule."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 3 — Chapitre 24 — Vers Raizin
(1,
"Vers Raizin",
false,
24,
false,
NULL,

"Vous décidez de vous diriger vers Raizin, et la route de ses vignobles.

Quelque chose vous y attire, ou serait-ce le fragment qui cherche à vous guider ?

Le paysage est calme, mais une tension plane dans l’air.
Sur le chemin, peu de voyageurs. Seuls les oiseaux et le vent dans la plaine accompagnent vos pas, avant d’atteindre les côteaux des vignobles.

C’est une zone régulièrement en conflit : entre autres patrouilles fréquentes et escarmouches signalées…
Les tensions avec le duché voisin d’Asterakie sont bien connues.

Et pourtant vous avancez.
",
"/fragment/acte_3/raizin/carte_raizin.jpg",
"La carte de la région d’Onenta-aux-Mines, avec une loupe qui zoom sur Raizin, village entouré de vignobles."),

-- Acte 3 — Chapitre 48 — La milice d’Asterakie
(1,
"La milice d’Asterakie",
false,
48,
false,
NULL,

"“Halte-là !”

Vous entendez la voix avant même de voir la milice.
Six silhouettes se détachent lentement de l’horizon, comme sorties d’un rêve trop long.

“Vous êtes sur le territoire du duché d’Asterakie.
Il vous faut un laissez-passer si vous souhaitez continuer d’avancer.
Nous sommes chargés de les contrôler, les anciens ne sont plus valides, trop de contrefaçons circulent.
Seul l’intendant du Duc est autorisé à délivrer les nouveaux, désormais dotés de gages de sécurité renforcés.”

Le ton est monocorde, presque fatigué.
Il ne semble pas y avoir d’hostilité malgré les fusils qu’ils portent.
Juste un protocole.

“Vos papiers ne sont pas en règle.
Vous pouvez quitter le duché ou nous suivre, mais il n’y a pas de troisième voie.”

Parfois, les seuls choix qu'on nous laisse sont mauvais.
Mais on doit quand même choisir.

Que faites-vous ?
",
"/fragment/acte_3/raizin/milice_face.jpg",
"Bataillon de miliciens constitués de six personnes dont un porte-drapeau, armés de fusils.
Ils portent des uniformes avec une veste violette cinturée, un pantalon jaune, une bandouillère et des épaulettes vertes ainsi qu’un casque ayant un plumet jaune.
Le drapeau arbore des couleurs vertes et jaunes."),

-- Acte 3 — Chapitre 60 — En joue milice (= Se battre)
(1,
"En joue",
false,
60,
false,
NULL,

"Vous avez choisi de vous battre.

Était-ce vraiment un bon choix ?

Les miliciens ne bougent pas, mais vous sentent prêts.
En une fraction de seconde, tous vous mettent en joue, sans trembler, prêts à tirer au moindre geste.

“Nous vous avions prévenu, il n’y a pas de troisième voie.
Nous sommes plus nombreux, très entraînés et mieux armés.
Pensiez-vous vraiment pouvoir vous attaquer à un bataillon au complet ?”

Vous esquissez un mouvement.
Un cliquetis de verrous vous répond.
Le protocole est en marche.

Que se passe-t-il…
",
"/fragment/acte_3/raizin/milice_en_joue.jpg",
"Bataillon de six miliciens armés vous mettant en joue avec leurs fusils."),

-- Acte 3 — Chapitre 26 — Les suivre
(1,
"Les suivre",
false,
26,
false,
NULL,

"Vous hésitez un instant, puis baissez les yeux.
Mieux vaut éviter les ennuis. Ce n’est pas le moment de déclencher une fusillade.

Une petite voix, ou peut-être le fragment lui-même, vous souffle qu’après tout ce que vous avez déjà traversé, c’est peut-être la meilleure des options.
Alors vous les suivez.

Le milicien qui vous a demandé vos papiers vous fait signe d’avancer.
Vous obéissez sans protester.
Le groupe vous encadre, silencieux.

L’atmosphère est pesante, mais sans violence.
Juste une rigueur froide, mécanique, protocolaire.
On vous emmène sans brutalité. Mais sans détour.

Ce jour-là, le Duc est en ville pour un congrès diplomatique.
La sécurité est renforcée.

La milice vous dépose au poste de garde.

On ne vous dit rien.
",
"/fragment/acte_3/raizin/milice_suivre.jpg",
"Bataillon de six miliciens armés de dos avançant devant vous."),

-- Acte 3 — Chapitre 39 — Le poste de garde
(1,
"Le poste de garde",
false,
39,
false,
NULL,

"Au poste de garde, toutes vos affaires sont confisquées.
Elles sont triées, inventoriées, scellées.
Le fragment figure parmi elles.

Vous protestez, mais personne ne vous écoute.
Vous n’aviez pas vos papiers à jour, et sur le mauvais territoire.

Tout semble déjà décidé.

Vous êtes conduit dans un couloir froid, sans fenêtre, puis jeté dans une cellule étroite.
Sans explications.

Le fragment vous a été arraché, mais une part de vous sait qu’il n’a pas dit son dernier mot.
Tout le monde doit mourir un jour. Mais pas aujourd’hui.
",
"/fragment/acte_3/raizin/raizin_prison.jpg",
"Une cellule étroite, avec un sol pavé irrégulier, des murs ayant des pierres très lisses.
Ainsi qu’une petite fenêtre à barreaux assez haute offrant un rayon de lumière.
Vous êtes assis sur les genoux au fond de la cellule, sous la fenêtre."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 3 — Chapitre 50 — La décadence de Raizin (= L’équilibre vacille)
(1,
"La décadence de Raizin",
false,
50,
false,
NULL,

"Le fragment a été offert par le Duc en cadeau diplomatique à l’Empereur.
Un présent rare, d’une beauté troublante.

Vous n’étiez qu’une pièce de plus sur l’échiquier.
On ne joue pas impunément avec des forces qui nous dépassent.
Elles ne se laissent pas contenir.

L’Empire est tombé le premier. Puis les royaumes, un à un, sur tous les continents.
Le cristal parle toutes les langues, murmure à chacun des rêves de grandeur et de richesse.

Peut-être est-ce un mal pour un bien. Vous n’êtes plus sous emprise directe.
Mais vous avez aidé à ouvrir la porte.

Merci pour votre aide précieuse, Aventurier.
Le cristal vous remercie également.
",
"/fragment/acte_3/raizin/fin_raizin.jpg",
"Une salle du trône sombre et majestueuse.
Un coffre ouvert, posé face au trône, diffuse une lumière surnaturelle qui éclaire le bas du siège et la silhouette encapuchonnée de la personne assise dessus, immobile, les bras posés sur ses genoux."),

-- Acte 3 — Chapitre 16 — Vers Lapoutre
(1,
"Vers Lapoutre",
false,
16,
false,
NULL,

"Vous décidez de vous diriger vers Lapoutre, un petit village niché au nord, entouré de forêts profondes, riches en essences végétales singulières.

Quelque chose vous y attire, ou serait-ce le fragment qui cherche à vous guider ?

On raconte que ces bois abritent des essences rares, mais aussi des créatures que l’on ne dérange pas sans conséquences.
Le chemin forestier est calme. Trop calme. Un peu beaucoup trop calme à votre goût.
Les oiseaux y chantent à peine, comme s’ils retenaient leur souffle.

Peu de voyageurs croisent votre route.
Seuls les quelques bruissements de feuilles et le vent accompagnent vos pas, jusqu’à la lisière de la forêt.

Dans cette ambiance, une tension diffuse s’installe.
Quelque chose vous observe, ou vous attend.
Quelque part, tapi dans l’ombre du sous-bois.

Et pourtant vous avancez.
",
"/fragment/acte_3/lapoutre/carte_lapoutre.jpg",
"La carte de la région d’Onenta-aux-Mines, avec une loupe qui zoom sur Lapoutre, village entouré de forêts."),

-- Acte 3 — Chapitre 29 — La clairière
(1,
"La clairière",
false,
29,
false,
NULL,

"Au fur et à mesure de votre progression, vous vous enfoncez plus profondément au cœur de la forêt.

À l’orée d’une clairière, vous apercevez un magnifique dragon écarlate se tenant couché sur un rocher, luisant dans les rayons du soleil.

Soudain, plus un bruit. Même les oiseaux se taisent.

Le dragon a redressé sa tête comme s’il vous attendait, et s’adresse à vous d’une voix profonde et ancienne, sans ouvrir la bouche :
“Qui que vous soyez, avez-vous la moindre idée de ce que vous avez osé faire ?
Il y a beaucoup de choses, et d’équilibres, que vous ne comprenez pas ici-bas.”

Vous ne bougez pas, lui non plus.
Prenant un temps pour vous jauger, si c’est bien de vous qu’il s’agit.

Vous envisagez les différentes options possibles : contourner la clairière avec la densité de la forêt vous prendrait beaucoup trop de temps. Faire demi-tour pour revenir à Onenta-aux-Mines, c’est risqué mais faisable. Discuter avec lui, ou même passer en force... pourquoi pas.

Que faites-vous ?
",
"/fragment/acte_3/lapoutre/dragon_arrive.jpg",
"Un dragon de couleur rouge orangé, couché sur un rocher à l’entrée de la clairière bordée par des arbres.
La lumière du soleil joue sur les reflets de ses écailles."),

-- Acte 3 — Chapitre 46 — Parlementer
(1,
"Parlementer",
false,
46,
false,
NULL,

"Vous avez choisi la voie de la diplomatie avec ce dragon légendaire.

Celui-ci reprend d’une voix caverneuse :
“Je vais vous expliquer, pour que vous puissiez faire vos choix en connaissance de cause.”

Il vous fixe longuement.
“Il y a fort, fort longtemps, mes ancêtres et les premiers peuples ont uni leurs forces pour ensevelir ce cristal, afin de préserver l’équilibre des forces”, révèle-t-il.

Puis il poursuit :
“Ce cristal détient une magie originelle très ancienne que personne aujourd’hui ne peut maîtriser.
La terre, ici, est sacrée et limite son pouvoir.
Ce cristal doit être replacé dans son lieu d’origine et détruit par le feu, ou il finira par corrompre tout ce qu’il touche.
Tout ceci s’est déjà produit et se reproduira encore tant qu’il ne sera pas stoppé.”

“Je suis fort, mais malgré toute ma puissance sur les différents plans, je ne peux contenir l'influence de cet artefact en dehors de cette zone, et même ici, cela me demande beaucoup de ressources.”

Il réfléchit en marquant une pause.
“Je vous offre l’opportunité de pouvoir remonter le temps, et de vous ramener à un point clé où vos choix n’étaient pas encore définis, afin d’en faire d’autres, selon votre conscience.”

La petite voix revient au creux de votre esprit :
“Ne l’écoute pas. Ce sont des foutaises.
Nous sommes bien ensemble… nous allons faire de grandes choses.”

Que décidez-vous ?
",
"/fragment/acte_3/lapoutre/dragon_parlementer.jpg",
"Le dragon se redresse sur le rocher en déployant ses ailes à mi-hauteur.
Le soleil couchant derrière lui."),

-- Acte 3 — Chapitre 21 — Le franchissement de la clairière ( = Tenter de passer & Passer malgré tout)
(1,
"Le franchissement de la clairière",
false,
21,
false,
NULL,

"Le dragon se redresse, vous barrant le passage en déployant ses ailes massives, formant ainsi une barrière presque infranchissable.

Il observe calmement votre réaction, jaugeant votre détermination.

Puis, il reprend d’une voix grave :
“Il ne doit pas quitter le territoire. Ce serait d’un grand péril pour tous.
Je me dois de me battre, s’il le faut.”

Le fragment frémit, est-ce lui ou votre propre instinct qui vous souffle de ne rien lâcher ?

Le dragon, sans trop savoir pourquoi, vous semble hésiter.
Une ombre traverse fugacement son regard.
Il vacille à peine, comme s’il luttait contre une force invisible.

Vous en profitez pour vous glisser sous son aile et rejoindre l’autre côté de la clairière, sans qu’il ait le temps de réagir.

Il chancelle derrière vous.
",
"/fragment/acte_3/lapoutre/dragon_franchissement.jpg",
"Le dragon se redresse sur le rocher menaçant, ouvrant ses ailes au-dessus de lui.
Les rayons du soleil éclairant par derrière le faisant devenir plus sombre."),

-- Rappel ordre — INSERT INTO chapter (history_id, title, is_first, number, gives_fragment, text_normal, text_insane, image_path, image_alt) VALUES

-- Acte 3 — Chapitre 35 — Le village des bûcherons
(1,
"Le village des bûcherons",
false,
35,
false,
NULL,

"Après avoir traversé la clairière et poursuivi votre parcours à travers la forêt, vous parvenez enfin au village de Lapoutre, exténué.

Les habitants, ayant senti trembler la forêt, accourent visiblement alarmés et suspicieux.

L’un d’entre eux vous questionne :
“Que s’est-il passé, avez-vous vu apparaître le Gardien ?
Toute la zone s’est mise à trembler, on aurait dit un combat de titans !”

Vous répondez, interloqué :
”Quel Gardien ?”

Une petite voix chuchote alors, au creux de votre esprit :
“Laisse-les.
Ne t’en occupe pas, tu vois bien que ce sont des rustres.
Ils ont sûrement des légendes locales.”

Parfois, les seuls choix qu'on nous laisse sont mauvais.
Mais on doit quand même choisir.

Que répondrez-vous aux villageois, savez-vous vraiment ce qu’il s’est passé ?
",
"/fragment/acte_3/lapoutre/lapoutre_bucherons.jpg",
"Village au cœur de la forêt avec des maisons en pierre et en bois.
Les villageois nombreux viennent vers vous."),

-- Acte 3 — Chapitre 28 — Dire ce qu’il s’est passé (= Oui bûcherons)
(1,
"Dire ce qu’il s’est passé",
false,
28,
false,
NULL,

"“Ce qu’il s’est passé, c’est qu’en traversant une clairière en contrebas, j’ai croisé un dragon écarlate.
Il m’a refusé le passage.”

Un frémissement d’inquiétude traverse les villageois.

“Vous vous êtes battu contre lui ?” demande une voix plus ferme.

Vous hésitez, le souvenir encore vif de ce qui s’est passé dans votre mémoire.
“J’ai pas eu le choix. C’était lui ou nous.”

Un silence lourd s’installe.

Puis, sans un mot de plus, les villageois vous invitent à entrer dans le village.
Quelque chose dans leurs regards vous met mal à l’aise.

La petite voix revient et murmure, moqueuse :
“Ils savent. Ils ont peur.”
",
"/fragment/acte_3/lapoutre/lapoutre_oui_bucherons.jpg",
"Au cœur du village, les habitants se sont rassemblés sur la rue pavée devant leurs maisons."),

-- Acte 3 — Chapitre 43 — Ne sais pas (= Non bûcherons)
(1,
"Ne sais pas",
false,
43,
false,
NULL,

"“Un Gardien ?” répétez-vous surpris.
“Nous avons rencontré beaucoup de créatures en venant, mais un Gardien, de quoi parlez-vous ?”

Les villageois se regardent avec inquiétude.
“Peut-être que ce n’était rien finalement, juste la forêt qui grondait violemment.”

Un villageois plus vieux que les autres, vous fixe longuement d’un regard perçant :
“On dit que ceux qui les portent ne voient plus le monde tel qu’il est.”

Un silence pesant s’installe.

Puis, sans un mot de plus, les villageois vous invitent à entrer dans le village.
Quelque chose dans leurs regards vous met mal à l’aise.

La petite voix revient et murmure, moqueuse :
“Comme dans leurs contes. Ils savent. Ils ont peur.”
",
"/fragment/acte_3/lapoutre/lapoutre_non_bucherons.jpg",
"Au cœur du village, les habitants se sont rassemblés sur la rue pavée devant leurs maisons."),

-- Acte 3 — Chapitre 37 — Le verre d’accueil
(1,
"Le verre d’accueil",
false,
37,
false,
NULL,

"“Étranger, vous devez être fatigué par votre long voyage et toutes les épreuves rencontrées jusqu’ici.

Veuillez accepter notre hospitalité.

Vous pouvez dormir ici, c’est la maison pour les voyageurs de passage.
Elle est un peu rudimentaire, mais vous y serez tranquille pour vous reposer.

Laissez-nous faire.

Tout d’abord, voici un verre pour vous désaltérer.
C’est que du naturel, fait avec les plantes offertes par la forêt.
Nous vous préparons également un repas chaud.”

Sur ce, comme vous tombez de fatigue, vous ne vous attardez pas auprès des villageois et allez vous coucher après les avoir remerciés.

Vous sombrez dans un sommeil profond, et semblez voir des ombres danser.

Vous avez la sensation que le fragment vous a été comme arraché. Ce qui est une impression fort désagréable.

Puis, plus rien.
Un trou noir.

Du moins, jusqu’au réveil.
",
"/fragment/acte_3/lapoutre/lapoutre_bucherons_verre.jpg",
"A la tombée de la nuit, le village est éclairé par des lanternes, quelques habitants sont encore dehors.
La forêt est lugubre."),

-- Acte 3 — Chapitre 20 — La décadence de Lapoutre (= L’équilibre vacille)
(1,
"La décadence de Lapoutre",
false,
20,
false,
NULL,

"Au matin, après avoir accepté l’hospitalité des villageois, vous découvrez qu’on vous a délesté de vos affaires.

Vous restez seul, dépouillé.
Tout le monde doit mourir un jour. Mais pas aujourd’hui.

Le fragment est parti, mais une part de vous sait qu’il n’a pas dit son dernier mot.

Vous n’étiez qu’une pièce de plus sur l’échiquier.
On ne joue pas impunément avec des forces qui nous dépassent.
Elles ne se laissent pas contenir.

Les affaires subtilisées seront revendues par la communauté, et le fragment voyageant au gré des transactions, contaminera ses différents possesseurs et étendra sa domination…
L’Empire est tombé le premier. Puis les royaumes, un à un, sur tous les continents.
Le cristal parle toutes les langues, murmure à chacun des rêves de grandeur et de richesse.

Peut-être est-ce un mal pour un bien. Vous n’êtes plus sous emprise directe.
Mais vous avez aidé à ouvrir la porte.

Merci pour votre aide précieuse, Aventurier.
Le cristal vous remercie également.
",
"/fragment/acte_3/lapoutre/fin_lapoutre.jpg",
"Au petit matin brumeux, des villageois encapuchonnés partent dans la forêt avec des lanternes.
L’un d’entre eux porte une sacoche avec quelque chose à l’intérieur d’où émane une étrange lueur.");
