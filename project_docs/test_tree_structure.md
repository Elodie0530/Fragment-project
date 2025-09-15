### Test pour visualiser mon arborescence de la partie Livre avec Mermaid

Ce fichier contient deux essais d'affichage de l'acte 1 avec Mermaid, qui permet un rendu sous forme graphique dans GitHub.
J'ai testé le rendu sur le site "mermaid.live.editor", mais je trouve les schémas peu lisibles.  
Pour cette raison, je laisserai mon code dans ce fichier de test, entouré par les balises HTML ```<pre> <code>` car cela deviens du coup aussi partie de mon projet.  
L'arborescence finale sera présentée via des fichiers images importés.

<br>
##### Ce graphique s'affiche de haut en bas, indiquer avec _graph TD_.

<pre><code>

```mermaid
graph TD
subgraph Départ
01[Début  - carte départ] --> 02[Place de la fontaine]

02[Place de la fontaine] --> 11[Auberge]
02[Place de la fontaine] --> 22[Ecole]
02[Place de la fontaine] --> 33[Bijouterie]
end

subgraph Auberge
11[Auberge] --> 34[Entrer dans l'auberge, parler avec]
11[Auberge] --> 02[place de la fontaine]
11[Auberge] --> 06[Se rendre à la bourse aux minéraux]
34[Entrer dans l'auberge, parler avec] --> 03[Serveur]
34[Entrer dans l'auberge, parler avec] --> 49[Client attablé]
34[Entrer dans l'auberge, parler avec] --> 27[Client bar]
34[Entrer dans l'auberge, parler avec] --> 55[Aubergistes]
03[Serveur] --> 34[Entrer dans l'auberge, parler avec]
03[Serveur] --> 02[Place de la fontaine]
49[Client attablé] --> 34[Entrer dans l'auberge, parler avec]
49[Client attablé] --> 02[Place de la fontaine]
27[Client bar] --> 34[Entrer dans l'auberge, parler avec]
27[Client bar] --> 02[Place de la fontaine]
55[Aubergistes] --> 34[Entrer dans l'auberge, parler avec]
55[Aubergistes] --> 02[Place de la fontaine]
end

subgraph Ecole
22[Ecole] --> 15[Entrer dans l'école, parler avec]
22[Ecole] --> 02[Place de la fontaine]
22[Ecole] --> 06[Se rendre à la bourse aux minéraux]
15[Entrer dans l'école, parler avec] --> 30[Professeur]
15[Entrer dans l'école, parler avec] --> 19[Elèves]
15[Entrer dans l'école, parler avec] --> 54[Tombola]
15[Entrer dans l'école, parler avec] --> 04[Orsik Pioche d'Argent]
30[Professeur] --> 15[Entrer dans l'école, parler avec]
30[Professeur] --> 02[Place de la fontaine]
19[Elèves] --> 15[Entrer dans l'école, parler avec]
19[Elèves] --> 02[Place de la fontaine]
54[Tombola] --> 63[Gain tombola]
54[Tombola] --> 02[Place de la fontaine]
63[Gain tombola] --> 02[Place de la fontaine]
63[Gain tombola] --> 06[Se rendre à la bourse aux minéraux]
04[Orsik Pioche d'Argent] --> 15[Entrer dans l'école, parler avec]
04[Orsik Pioche d'Argent] --> 02[Place de la fontaine]
end

subgraph Bijouterie
33[Bijouterie] --> 25[Entrer dans la bijouterie, parler avec]
33[Bijouterie] --> 02[place de la fontaine]
33[Bijouterie] --> 06[Se rendre à la bourse aux minéraux]
25[Entrer dans la bijouterie, parler avec] --> 05[Vigile]
25[Entrer dans la bijouterie, parler avec] --> 17[Clients]
25[Entrer dans la bijouterie, parler avec] --> 41[Vendeur]
25[Entrer dans la bijouterie, parler avec] --> 13[Tharadin Emérhalde]
05[Vigile] --> 25[Entrer dans la bijouterie, parler avec]
05[Vigile] --> 02[Place de la fontaine]
17[Clients] --> 25[Entrer dans la bijouterie, parler avec]
17[Clients] --> 02[Place de la fontaine]
41[Vendeur] --> 36[Achat bijou]
41[Vendeur] --> 02[Place de la fontaine]
36[Achat bijou] --> 02[Place de la fontaine]
36[Achat bijou] --> 06[Se rendre à la bourse aux minéraux]
13[Tharadin Emérhalde] --> 25[Entrer dans la bijouterie, parler avec]
13[Tharadin Emérhalde] --> 02[Place de la fontaine]
end

subgraph Bourse
06[Se rendre à la bourse aux minéraux] --> 08[Assez d'indices]
08[Assez d'indices] --> 10[Bourse aux minéraux]
08[Assez d'indices] --> 02[Place de la fontaine]
end

```
</code></pre>

---
<br>  
##### Ce graphique s'affiche de gauche à droite, indiquer avec _graph LR_.

<pre><code>

```mermaid
graph LR
subgraph Départ
01[Début  - carte départ] --> 02[Place de la fontaine]
02[Place de la fontaine] --> 11[Auberge]
02[Place de la fontaine] --> 22[Ecole]
02[Place de la fontaine] --> 33[Bijouterie]
end

subgraph Auberge
11[Auberge] --> 34[Entrer dans l'auberge, parler avec]
11[Auberge] --> 02[place de la fontaine]
11[Auberge] --> 06[Se rendre à la bourse aux minéraux]
34[Entrer dans l'auberge, parler avec] --> 03[Serveur]
34[Entrer dans l'auberge, parler avec] --> 49[Client attablé]
34[Entrer dans l'auberge, parler avec] --> 27[Client bar]
34[Entrer dans l'auberge, parler avec] --> 55[Aubergistes]
03[Serveur] --> 34[Entrer dans l'auberge, parler avec]
03[Serveur] --> 02[Place de la fontaine]
49[Client attablé] --> 34[Entrer dans l'auberge, parler avec]
49[Client attablé] --> 02[Place de la fontaine]
27[Client bar] --> 34[Entrer dans l'auberge, parler avec]
27[Client bar] --> 02[Place de la fontaine]
55[Aubergistes] --> 34[Entrer dans l'auberge, parler avec]
55[Aubergistes] --> 02[Place de la fontaine]
end

subgraph Ecole
22[Ecole] --> 15[Entrer dans l'école, parler avec]
22[Ecole] --> 02[Place de la fontaine]
22[Ecole] --> 06[Se rendre à la bourse aux minéraux]
15[Entrer dans l'école, parler avec] --> 30[Professeur]
15[Entrer dans l'école, parler avec] --> 19[Elèves]
15[Entrer dans l'école, parler avec] --> 54[Tombola]
15[Entrer dans l'école, parler avec] --> 04[Orsik Pioche d'Argent]
30[Professeur] --> 15[Entrer dans l'école, parler avec]
30[Professeur] --> 02[Place de la fontaine]
19[Elèves] --> 15[Entrer dans l'école, parler avec]
19[Elèves] --> 02[Place de la fontaine]
54[Tombola] --> 63[Gain tombola]
54[Tombola] --> 02[Place de la fontaine]
63[Gain tombola] --> 02[Place de la fontaine]
63[Gain tombola] --> 06[Se rendre à la bourse aux minéraux]
04[Orsik Pioche d'Argent] --> 15[Entrer dans l'école, parler avec]
04[Orsik Pioche d'Argent] --> 02[Place de la fontaine]
end

subgraph Bijouterie
33[Bijouterie] --> 25[Entrer dans la bijouterie, parler avec]
33[Bijouterie] --> 02[place de la fontaine]
33[Bijouterie] --> 06[Se rendre à la bourse aux minéraux]
25[Entrer dans la bijouterie, parler avec] --> 05[Vigile]
25[Entrer dans la bijouterie, parler avec] --> 17[Clients]
25[Entrer dans la bijouterie, parler avec] --> 41[Vendeur]
25[Entrer dans la bijouterie, parler avec] --> 13[Tharadin Emérhalde]
05[Vigile] --> 25[Entrer dans la bijouterie, parler avec]
05[Vigile] --> 02[Place de la fontaine]
17[Clients] --> 25[Entrer dans la bijouterie, parler avec]
17[Clients] --> 02[Place de la fontaine]
41[Vendeur] --> 36[Achat bijou]
41[Vendeur] --> 02[Place de la fontaine]
36[Achat bijou] --> 02[Place de la fontaine]
36[Achat bijou] --> 06[Se rendre à la bourse aux minéraux]
13[Tharadin Emérhalde] --> 25[Entrer dans la bijouterie, parler avec]
13[Tharadin Emérhalde] --> 02[Place de la fontaine]
end

subgraph Bourse
06[Se rendre à la bourse aux minéraux] --> 08[Assez d'indices]
08[Assez d'indices] --> 10[Bourse aux minéraux]
08[Assez d'indices] --> 02[Place de la fontaine]
end
```
</code></pre>
