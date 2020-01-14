# freebox_ping_reboot
Reboot la Freebox si plus de ping (delta, révolution)

```shell
git clone https://github.com/YanK-fr/freebox_ping_reboot.git
```

Puis ajouter checkConnexion.sh dans un CRON

Exemple :
```
*/5 *   * * *   ubuntu /home/ubuntu/checkConnexion.sh
```

# Freebox Delta

Pour les Freebox Delta possible de créer une VM ubuntu et d'utiliser le script directement dedans.
Pas besoin d'une machine supplémentaire à côté pour checker la connexion et rebooter la Freebox.
Pour mes besoins ça marche très bien comme ça. :)
