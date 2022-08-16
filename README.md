- - -
# Install
- - -

## Artix GNU/Linux (dinit)

- Update system and install Web Server packages.

```console
root@artix# pacman -Syu --needed nginx-dinit php-fpm-dinit
```

- Download DokuWiki at [https://download.dokuwiki.org/](https://download.dokuwiki.org/).

- Set up DokuWiki files.

```console
root@artix# tar -xvzf <DOKUWIKI.tgz> -C /usr/share/webapps/
```

- Set up (this) wiki repository.

```console
root@artix# git clone https://github.com/aisk11/wiki ~/wiki/
root@artix# rsync -av ~/wiki/server/nginx/ /etc/nginx/
root@artix# rsync -av --delete ~/wiki/web/ /usr/share/webapps/
root@artix# chown -R http:http /usr/share/webapps/dokuwiki/
```

- Cleanup.

```console
root@artix# rm -f /usr/share/webapps/dokuwiki/install.php
root@artix# rm -f <DOKUWIKI.tgz>
root@artix# rm -rf ~/wiki/
```

- Start and enable web server.

```console
root@artix# dinitctl start php-fpm
root@artix# dinitctl start nginx
root@artix# dinitctl enable php-fpm
root@artix# dinitctl enable nginx
```

- - -
# Backup and Restore
- - -

- Backup personal DokuWiki files **(note that there is no '/' after ***dokuwiki*** dir)**.

```console
root@artix# rsync -av --delete /usr/share/webapps/dokuwiki <BACKUP-DIR>/
```

- Restore personal DokuWiki files.

```console
root@artix# rsync -av --delete <BACKUP-DIR>/ /usr/share/webapps/
root@artix# chown -R http:http /usr/share/webapps/dokuwiki/
```
