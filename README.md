# Freebox Delta et révolution
Reboot la Freebox si plus de ping (delta, révolution)

1. Copiez en local
```shell
sudo apt install git
git clone https://github.com/YanK-fr/freebox_ping_reboot.git
```
2. Lancez au moins 1 fois reboot-fbx.sh et valider l'autorisation sur la Freebox
```shell
./reboot-fbx/reboot-fbx.sh
```
3. Aller dans l'interface de configuration mafreebox, dans la rubrique Paramètre de la Freebox > Gestion des accès, puis dans l'onglet Applications et ajouter à l'application la permission Modification des réglages de la Freebox.

N'hésitez pas à lire le README de [reboot-fbx](https://github.com/kmmndr/reboot-fbx)

4. Puis ajouter checkConnexion.sh dans un CRON
```shell
crontab -e
```
Exemple :
```
*/5 *   * * *   ubuntu /home/ubuntu/checkConnexion.sh
```

# Freebox Delta

Pour les Freebox Delta possible de créer une VM ubuntu et d'utiliser le script directement dedans.
Pas besoin d'une machine supplémentaire à côté pour checker la connexion et rebooter la Freebox.
Pour mes besoins ça marche très bien comme ça. :)
