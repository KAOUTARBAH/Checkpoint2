# Exercice 3 : Vérification d'une infrastructure réseau 

## a. Contexte
Vérifier que les configurations réseaux des matériel sont correcte.
Pour cela, suivre et répondre aux questions.

## b. Découverte du réseau
### Q.3.1 Quel est le matériel réseau A ?
- switch

#### Quel est son rôle sur ce schéma vis-à-vis des ordinateurs ?
- un switch fait la segmentation entre les ordinateurs en créant des chemins de communication directs entre eux. Cela évite les collisions et améliore la vitesse du réseau .

### Q.3.2 Quel est le matériel réseau B ?
- Retour 
#### Quel est son rôle pour le réseau 10.10.0.0/16 ?
- Un routeur est nécessaire pour assurer le retour du trafic vers le réseau 10.10.0.0/16. Son rôle est de diriger les paquets de données vers ce réseau lorsqu'un appareil externe veut communiquer avec lui. Il utilise sa table de routage pour savoir où envoyer les données.

### Q.3.3 Que signifie f0/0 et g1/0 sur l’élément B ?
- f0/0 : un port FastEthernet (100 Mbps).
- g1/0 : un port GigabitEthernet (1 Gbps).

### Q.3.4 Pour l'ordinateur PC2, que représente /16 dans son adresse IP ?
- Le /16 dans l'adresse IP de PC2 représente un masque de sous-réseau. Cela signifie que les 16 premiers bits de l'adresse IP sont utilisés pour identifier le réseau, et les 16 autres bits sont utilisés pour identifier les appareils (hôtes) sur ce réseau.

### Q.3.5 Pour ce même ordinateur, que représente l'adresse 10.10.255.254 ?
- passerelle par défaut.

## c. Etude théorique
### Q.3.6 Pour les ordinateur PC1, PC2, et PC5 donne :

#### L'adresse de réseau :  10.10.0.0/16
#### La première adresse disponible :  10.10.0.1
#### La dernière adresse disponible :  10.10.255.254
#### L'adresse de diffusion : 10.10.255.255

### Q.3.7 En t'aidant des informations que tu as fourni à la question 3.6, et à l'aide de tes connaissances, indique parmi tous les ordinateurs du schéma, lesquels vont pouvoir communiquer entre-eux.
- PC1 et pc3 et pc 4 peuvent comminiquer entre eux

### Q.3.8 De même, indique ceux qui vont pouvoir atteindre le réseau 172.16.5.0/24.
- PC1 et pc3 et pc 4 

### Q.3.9 Quel incidence y-a-t'il pour les ordinateurs PC2 et PC3 si on interverti leur ports de connexion sur le matériel A ?
- le  PC2 et PC3 ne sont pas dans le même réseau le switch ne pourra pas faire de communication entre eux directement.
- Le switch ne route pas le trafic entre deux réseaux différents. Dans ce cas, PC2 et PC3 devront passer par un routeur pour pouvoir communiquer, même si leurs ports sont intervertis.

### Q.3.10 On souhaite mettre la configuration IP des ordinateurs en dynamique. Quelles sont les modifications possible ?
ajouter un serveur dhcp et configuer la plage réseau
Configurer un serveur DHCP .
Modifier les paramètres IP des ordinateurs pour qu'ils obtiennent une adresse automatiquement.
