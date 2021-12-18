# Datapack Energy
Une librairie Minecraft sous forme de Datapack pour gérer les systèmes d'énergie, comme pour Mechanization ou bien SimplEnergy. Cette librairie gère les éléments suivants :
* Des Scoreboards qui définissent comment l'énergie est stockée et transférée
* Désignation de blocs customs comme étant des appareils qui peuvent envoyer de l'énergie (c-à-d : un générateur qui produit de l'énergie et en envoie à des machines)
* Désignation de blocs customs comme étant des appareils qui peuvent recevoir de l'énergie (c-à-d : une machine qui reçoit de l'énergie et qui la consomme pour effectuer une tâche
* Désignation de blocs customs comme étant des appareils qui peuvent envoyer et recevoir de l'énergie (c-à-d : une batterie qui peut recevoir et stocker de l'énergie, puis l'envoyer à des machines)
* Désignation de blocs customs comme étant des câbles qui peuvent se connecter et envoyer de l'énergie entre d'autres appareils
* Transfert automatique de l'énergie entre les machines adjacents entre elles, ou connectées par un câble
* Standards pour les items qui stockent de l'énergie dans l'inventaire du joueur, avec la posibilité d'ajouter et retirer de l'énergie de l'inventaire d'un joueur
* Fonctions de support pour toutes ces fonctionnalités

Il s'agit d'une librairie intégrée que vous intégrez dans votre Datapack au lieu d'avoir à le télécharger séparément. Nécessite [LanternLoad](https://github.com/LanternMC/load) pour fonctionner.

Note : Datapack Energy n'impose aucune notation dans le jeu sur la façon dont l'énergie est exprimée, et dans ce document, il fait simplement référence à l'énergie en matière "d'unités". Cependant, par convention, les unités du monde réel sont le plus souvent utilisées (kJ ou kWh, kW)

## Scoreboards
Voici les objectifs de scoreboard utilisés pour représenter une valeur quelconque.

```
energy.data
  Utilisé pour des maths, passer des variables entre fonctions, et le stockage d'un peu de données sur un appareil.
  La valeur energy.data des câbles est un nombre codé en binaire indiquant quels côtés sont connectés, c-à-d :
    63 -> 1  1  1  1  1  1 -> tous les côtés sont actifs
	  32 16 8  4  2  1
	Cela peut être utilisé pour mettre à jour le model pour afficher les connexions
	quand la fonction signal #energy:v1/cable_update est appelée.
```

```
energy.storage
  Indique combien d'énergie est stocké dans cette machine.
  En général, un "générateur" augmente ce chiffre pour créer de l'énergie,
  et un "consommateur" le soustrait pour utiliser l'énergie.
```

```
energy.max_storage
  Indique l'énergie maximale stockée dans cet appareil
```

```
energy.transfer_rate
  Indique la limite de transfert d'énergie d'une machine ou un câble. Il doit être positif sur toutes les 
  machines *et* les cables. Le définir au maximum d'un entier 32-bit pour une vitesse de transfert ilimitée.
  Les câbles sont limités par le réseau, donc si 3 machines ont 50 unités d'énergie (total à 150 unités)
  et que les câbles ne peuvent transférer qu'un total de 100 unités, alors 2 machines seront vidées jusqu'à 0,
  mais la machine restante restera à 50 unités.
  La vitesse de transfert du réseau est limitée par le câble le plus lent.
```

```
energy.usage_rate
  Il s'agit d'un score calculé égal au changement d'énergie de la machine *avant* le transfert
  C'est-à-dire que si une Machine a 50 unités d'énergie, puis génère 25 unités (total à 75),
  puis envoie les 75 d'unités à une autre machine, alors ce score est égal à 25 unités
  (pour les 25 unités d'énergie générées avant de transférer hors de la machine).
  Ce score est fourni comme une source de données pratique et ne doit pas être modifié manuellement.
```

```
energy.change_rate
  Il s'agit d'un score calculé égal au changement d'énergie de la machine *après* le transfert
  C'est-à-dire que si une Machine a 50 unités d'énergie, puis génère 25 unités (total à 75),
  puis envoie les 75 d'unités à une autre machine, alors ce score est égal à -50 unités
  (il a commencé à 50 unités, en a gagné 25, puis en a retiré 75, pour finir à 0: 0 - 50 = -50).
  Ce score est fourni comme une source de données pratique et ne doit pas être modifié manuellement.
```

## Selector Tags
Il s'agit de tags (ajoutés par la commande /tag) qui marquent les entités comme étant qqchose, ou comme devant faire qqchose.

```
energy.send
  Permet à une machine d'envoyer de l'énergie (c-à-d : un générateur)
  
energy.receive
  Permet à une machine de recevoir de l'énergie (c-à-d : un consommateur d'énergie)
  
  Un support de stockage (c-à-d : une batterie) peut à la fois envoyer et recevoir.
  Les batteries ne transfèrent pas d'énergie entre elles pour éviter les boucles infinies.
  Les machines transféreront l'énergie lorsqu'elles seront adjacentes, sans avoir besoin de câbles.
```

```
energy.cable
  Indique que l'objet est un câble, et doit connecter des machines.
```

## Function Calls
Les appels de fonction sont appelés par vous pour déclencher certains évents ou fonctionnalités

```
function energy:v1/api/init_cable
  À appeler sur un nouveau câble pour initialiser ses connexions
```

```
function energy:v1/api/init_machine
  À appeler sur une nouvelle machine pour initialiser ses connexions
```

```
function energy:v1/api/break_cable
  À appeler sur un câble lorsqu'il est cassé pour retirer ses connexions
```

```
function energy:v1/api/break_machine
  À appeler sur une machine lorsqu'elle est cassée pour retirer ses connexions
```

```
function energy:v1/api/modify_player_energy
  À appeler sur un joueur pour ajouter ou retirer de l'énergie des items stockés dans son inventaire.
  L'ensemble de l'inventaire est traité comme un seul pool d'énergie,
  donc ne modifie pas l'énergie sur des items spécifiques.
  #player.in energy.data -> quantité d'énergie à ajouter (+) ou à retirer (-)
  #player.out energy.data <- 0 pour l'echec de la modification de l'inv, 1 pour la réussite.
```

## Function Tags
Les Functions tags sont des signaux appelés par Datapack Energy pour vous informer qu'un événement s'est produit, et vous permet d'apporter des modifications à ces événements. Pour utiliser ces signaux, vous devez ajouter une fonction à la liste des tags concernée.

```
function #energy:v1/cable_can_connect
  Executé par et à la machine (as & at)
  Utilisé pour désactiver la connexion des câbles à la machine sur certaines faces
  #cable.in energy.data -> 0-5 indiquant la direction (haut, bas, nord, sud, est, ouest)
  #cable.out energy.data -> 1 pour peut se connecter, 0 pour ne peut pas se connecter
```

```
function #energy:v1/cable_update
  Appelé par et à un câble (as & at) lorsqu'une update est activée, comme une machine placée à côté.
  Utilisation prévue pour mettre à jour le modèle du câble, mais peut être utilisé pour d'autres choses.
```

```
function #energy:v1/update_energy_item
  Appelé par un joueur lorsqu'un item a été modifié par la fonction modify_player_energy.
  L'Item concerné sera dans un storage à energy:temp list[0] - Modifiez-le si nécessaire
  (comme ajouter/modifier un Lore spécifique spécifiant la quantité d'énergie stockée dans l'item)
```

## NBT Format
Il s'agit de spécifications d'NBT data pour les items, storage, ou entités qui détiennent des informations.

```
Les items qui stockent de l'énergie doivent utiliser le format suivant :
Item.tag.energy{storage:<amount>,max_storage:<max_amount>}
```

## How to use
1. Installez [LanternLoad](https://github.com/LanternMC/load) dans votre Datapack
2. Copiez le dossier `data/energy` dans votre Datapack
3. Fusionnez le contenu de `DatapackEnergy/data/load/tags/functions/load.json` et votre `data/load/tags/functions/load.json`
4. Implémentez l'API comme décrit ci-dessus.
