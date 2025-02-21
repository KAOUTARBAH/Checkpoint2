# Exercice 1 : Modification IP client serveur 
## a. Contexte
Tu as 2 ordinateurs, un client et un serveur qui ne communiquent pas.
Le but est de faire communiquer les 2 machines entre elle.

## b. Pratique
### Q.1.1 Pourquoi le ping avec les adresses IP des machines ne fonctionnent pas ?
- Prace que les deux machaine ne sont pas dans le meme réseaux .
machaine client est l'adresse ip : 172.16.100.50/24  @ reseaux 172.16.100.0
et machine serveur est l'adresse ip : 172.16.10.10 /24 @ R2SEAUX 172.16.10.0

#### Modifie la configuration sur le client pour que cela soit possible.
- je donne l'adresse ip au client  172.16.10.20 /24 


#### Explique ce que tu as fait et montre le par des copies d'écran.
![adresse client](https://github.com/KAOUTARBAH/Checkpoint2/blob/main/images/@clt.png)

#### n doit avoir la copie d'écran d'un ping fonctionnel.
![ping serveur](https://github.com/KAOUTARBAH/Checkpoint2/blob/main/images/pingServer.png)
![ping client](https://github.com/KAOUTARBAH/Checkpoint2/blob/main/images/pingClient.png)

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
