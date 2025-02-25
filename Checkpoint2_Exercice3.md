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
- ajouter un serveur dhcp et configuer la plage réseau
- Configurer un serveur DHCP .
- Modifier les paramètres IP des ordinateurs pour qu'ils obtiennent une adresse automatiquement.


## d. Analyse de trames
On a fait un enregistrement des trames entre certains ordinateurs du réseau.
Récupère les fichiers ci-dessous et ouvre les dans Wireshark.

## Fichier 1 :

### Q.3.11 Sur le paquet N°5, quelle est l'adresse mac du matériel qui initialise la communication ? Déduis-en le nom du matériel.
- Le paquet N°5 n'existe pas 
### Q.3.12 Est-ce que la communication enregistrée dans cette capture a réussi ? Si oui, indique entre quels matériel, si non indique pourquoi cela n'a pas fonctionné.
- Le paquet N°5 n'existe pas 
### Q.3.13 Dans cette capture, à quel matériel correspond le request et le reply ? Donne le nom, l'adresse IP, et l'adresse mac de chaque materiel.
- Le paquet N°5 n'existe pas 
### Q.3.14 Dans le paquet N°2, quel est le protocole encapsulé ? Quel est son rôle ?
- Le protocole encapsulé : ARP 
- Le Rôle : ARP est utilisé pour associer une adresse IP à une adresse MAC sur un réseau local.

### Q.3.15 Quels ont été les rôles des matériels A et B dans cette communication ?
- Matériel A (10.10.4.7) : Il a envoyé une requête ARP pour connaître l'adresse MAC de 10.10.4.1.
- Matériel B (10.10.4.1) : Il a répondu à cette requête ARP en envoyant son adresse MAC (00:50:79:66:68:00).

## Fichier 2 :

### Q.3.16 Dans cette trame, qui initialise la communication ? Donne l'adresse IP ainsi que le nom du matériel.
- L'adresse IP qui initialise la communication : 172.16.5.253
- Le nom du matériel :  Il s'agit de l'équipement qui envoie la requête ICMP Echo 

### Q.3.17 Quel est le protocole encapsulé ? Quel est son rôle ?
- Le protocole encapsulé ICMP 
- Le role de ICMP c'est le ping : tester la connectivité entre deux hôtes via la commande ping.

### Q.3.18 Est-ce que cette communication a réussi ? Si oui, indique entre quels matériel, si non indique pourquoi cela n'a pas fonctionné.
- Oui la communication a réussi , parce que il y' a une reponse ICMP de la source 10.12.2.254 de la destination 172.16.5.253 pour la demande de ICMP source 172.16.5.253 et destination 10.12.2.254

Matériel 1 : 172.16.5.253 (émetteur de la requête ICMP Echo)
Matériel 2 : 10.12.2.254 (répondeur de la requête ICMP Echo)

### Q.3.19 Explique la ligne du paquet N° 2
- No. : Il s'agit de l'ordre de numérotation du paquet qui a été capturé. 
- Time : Cette colonne t'indique combien de temps après le début de la capture ce paquet a été capturé. 
- Source : Il s'agit de l'adresse du système qui a envoyé le paquet. Ici c'est 10.12.2.254
- Destination : il s'agit de l'adresse de destination de ce paquet. Ici c'est 172.16.5.253 
- Protocole : il s'agit du type de paquet, par exemple ici cest ICMP
- Length : Cette colonne t'indique la longueur du paquet en octets. C'est 114.
- Info : cette colonne te donne plus d'informations sur le contenu du paquet et varie selon le type de paquet dont il s'agit. reponse ou requette dans cette exempele c'est réponse.

### Q.3.20 Quels ont été les rôles des matériels A et B ?
- Matériel A (172.16.5.253) : C'est l'initiateur de la communication. Il a envoyé une requête ICMP Echo pour tester la connectivité.
- Matériel B (10.12.2.254) : Il a répondu à la requête avec un message ICMP Echo Reply, indiquant que la communication est possible entre les deux équipements.

## Fichier 3 :

### Q.3.21 Dans cette trame, donne les noms et les adresses IP des matériels sources et destination.
#### matériels sources 
- Le nom :  Private_66:68:01
- L'adresses IP : 10.11.80.2

#### matériels destinations 
- Les noms : Broadcast
- L'adresses IP : 10.11.80.200

### Q.3.22 Quelles sont les adresses mac source et destination ? Qu'en déduis-tu ?
- L'adresse mac source :(00:50:79:66:68:01)
- L'adresses mac destination : Broadcast
(ff:ff:ff:ff:ff:ff)

### Q.3.23 A quel emplacement du réseau a été enregistré cette communication ?
- Cette communication a été enregistrée sur un réseau local (LAN), car elle utilise le protocole ARP, qui sert à associer une adresse IP à une adresse MAC. La trame est envoyée en broadcast, ce qui signifie qu'elle est diffusée à tous les appareils du même sous-réseau, une caractéristique des réseaux locaux.