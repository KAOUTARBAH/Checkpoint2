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


-
-
-
-


- Vérifiez l'état du service Bind9 :
  ```bash
  sudo systemctl status bind9

Assurez-vous qu'il est actif et en cours d'exécution.
![plage-dns](https://github.com/KAOUTARBAH/Checkpoint2/blob/main/images/test2.png)


### Désactiver l'authentification par mot de passe obsolète
	```bash
	ChallengeResponseAuthentication no
	UsePAM no

### Autoriser uniquement le protocole SSH version 2
	```bash
	Protocol 2


## Configuration côté client :

1. Générer une paire de clés SSH
	```bash
	ssh-keygen -t rsa -b 4096
