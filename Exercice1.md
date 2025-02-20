# Exercice 1
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
