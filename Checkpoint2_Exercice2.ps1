# Exercice 2 : Débogage de script PowerShell

### Q.2.1 Lorsque l'on exécute le script il y a une erreur et le script AddLocalUsers.ps1 ne s’exécute pas.
Corrige ce script pour que le script AddLocalUsers.ps1 s'éxecute.

- remplacer "Utilisateur" par "Users" dans ton script,
    ```bash
    Add-LocalGroupMember -Group "Users" -Member "$Prenom.$Nom"

Q.2.2 Le premier utilisateur du fichier Users.csv n'est jamais pris en compte. Modifie le script pour que cela soit le cas.
il faut MODIFIER   -Skip 2 PAR -Skip 1.
$Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","societe","fonction","service","description","mail","mobile","scriptPath","telephoneNumber" -Encoding UTF8  | Select-Object -Skip 1


Q.2.3 Le champs Descriptionest importé du fichier mais non-utilisé. Modifie le code pour que ce champs soit utilisé dans la création des utilisateurs.
# Ajout de la description dans les informations de l'utilisateur
        $UserInfo = @{
            Name                 = "$Prenom.$Nom"
            FullName             = "$Prenom.$Nom"
            Password             = $Password
            AccountNeverExpires  = $true
            PasswordNeverExpires = $false
            Description          = "$($user.description) - $($User.fonction)"  # Utilisation du champ Description
        }

Q.2.4 Dans l'importation des utilisateurs du fichier CSV, tous les champs sont pris. Or il n'y en a qu'une partie qui est utilisé par la suite. Corrige pour qu'il n'y ait que 
les champs utilisés pour la création des utilisateurs qui soient importés du fichier CSV.

$Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","fonction","description" -Encoding UTF8


Q.2.5 Le mot de passe crée n'est pas affiché, donc on ne le connait pas. Affiche le avec le message indiquant qu'un compte est crée.

Génère le mot de passe avec Random-Password.
Affiche ce mot de passe avec un message indiquant que le compte a été créé.

# Création de l'utilisateur avec tous les champs nécessaires
$Pass = Random-Password
$Password = (ConvertTo-secureString $Pass -AsPlainText -Force)

# Crée les informations de l'utilisateur
$UserInfo = @{
    Name                 = "$Prenom.$Nom"
    FullName             = "$Prenom.$Nom"
    Password             = $Password
    AccountNeverExpires  = $true
    PasswordNeverExpires = $false
    Description          = "$($user.description) - $($User.fonction)"
}

# Crée l'utilisateur
New-LocalUser @UserInfo

# Ajoute l'utilisateur au groupe "Users"
Add-LocalGroupMember -Group "Users" -Member "$Prenom.$Nom"

# Affiche un message avec le mot de passe généré
Write-Host "L'utilisateur $Prenom.$Nom a été créé avec succès. Le mot de passe est : $Pass"

