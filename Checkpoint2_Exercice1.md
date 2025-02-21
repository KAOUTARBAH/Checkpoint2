# Exercice 1 : Modification IP client serveur 
## a. Contexte
Tu as 2 ordinateurs, un client et un serveur qui ne communiquent pas.
Le but est de faire communiquer les 2 machines entre elle.

## b. Pratique
### Q.1.1 Pourquoi le ping avec les adresses IP des machines ne fonctionnent pas ?
- Prace que les deux machaine ne sont pas dans le meme réseaux .
- La achaine client est l'adresse ip : 172.16.100.50/24  @ reseaux 172.16.100.0
- Et machine serveur est l'adresse ip : 172.16.10.10 /24 @ R2SEAUX 172.16.10.0

#### Modifie la configuration sur le client pour que cela soit possible.
- je donne l'adresse ip au client  172.16.10.20 /24 

#### Explique ce que tu as fait et montre le par des copies d'écran.
![adresse client](https://github.com/KAOUTARBAH/Checkpoint2/blob/main/images/@clt.png)

#### On doit avoir la copie d'écran d'un ping fonctionnel.
![ping serveur](https://github.com/KAOUTARBAH/Checkpoint2/blob/main/images/pingServer.png)
![ping client](https://github.com/KAOUTARBAH/Checkpoint2/blob/main/images/pingClient.png)


### Q.1.2 Le ping avec le nom des machines ne fonctionne pas.
#### Modifie la configuration sur le client et/ou le serveur pour que cela soit possible et qu'un ping entre les 2 machines fonctionne avec le nom.
#### Explique ce que tu as fait et montre le par des copies d'écran.
- Sur le serveur on ouvre ce fichier : C:\Windows\System32\drivers\etc\hosts.
- ajouter la ligne suivante 
	```bash
	172.16.10.20    CLIENT1

- Sur le client on ouvre ce fichier : C:\Windows\System32\drivers\etc\hosts.
- ajouter la ligne suivante 
	```bash
	172.16.10.10    WINSERV

#### On doit avoir la copie d'écran d'un ping fonctionnel.
![ping nom client](https://github.com/KAOUTARBAH/Checkpoint2/blob/main/images/pingnomclient.png)
![ping nom server](https://github.com/KAOUTARBAH/Checkpoint2/blob/main/images/pingnomserver.png)

### Q.1.3 Modifie la configuration réseau du client pour qu'il soit en DHCP.
### Vérifie le paramétrage DHCP sur le serveur et compare le avec l'adresse IP du client.
- Commande de Configuration DHCP : Get-DhcpServerv4Scope
- addresse ip client c'est 172.16.10.20 

### Explique pourquoi le client ne récupère pas la 1ère adresse disponible sur la plage DHCP du serveur ?
Le serveur DHCP attribue les adresses IP en fonction d’un bail et tente de réattribuer l’adresse précédemment utilisée par un client.

### Fais une copie d'écran montrant l'adresse IP prise par le client.
![ping client dhcp](https://github.com/KAOUTARBAH/Checkpoint2/blob/main/images/pingdhcp.png)

### Q.1.4 Est-ce que ce client peut avoir l'adresse IP 172.16.10.15 en DHCP ?
#### Si oui fais les manipulations nécessaires.
- Oui on doit donner une adresse MAC client pour d'obtenir l'adresse 172.16.10.15 dans la reservation 
#### Explique ce que tu as fait et montre par une copie d'écran le résultat de la commande ipconfig /all sur le client.
- Mettre en place une attribution statique pour une machine cliente particulière dont l'adresse MAC 0800278920E1 permet d'obtenir l'adresse 172.16.10.15
- Dhcp --> winserv --> IPv4 --> Scope[172.10.0.0] vlan 10 --> Resevation 
- New Reservation :
	```
	Resrvation name : ResrvationClient1
	IP address :  172.16.10.15
	MAC Addresse : Resrvati0800278920E1 
	![ping client dhcp](https://github.com/KAOUTARBAH/Checkpoint2/blob/main/images/pingMacClient.png)

