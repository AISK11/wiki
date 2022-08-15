- - -
# Install
- - -

## Artix GNU/Linux (dinit)

- Install packages.

```console
root@artix# pacman -Syu --needed nginx-dinit php-fpm-dinit dokuwiki
```

- Clone wiki.

```console
root@artix# git clone https://github.com/aisk11/wiki ~/wiki/
```

- Install wiki.

```console
root@artix# rsync -av ~/wiki/server/nginx/ /etc/nginx/
root@artix# rsync -av --delete ~/wiki/web/ /usr/share/webapps/dokuwiki/
root@artix# chown -R http:http /usr/share/webapps/dokuwiki /var/lib/dokuwiki /etc/webapps/dokuwiki
```

- Start and enable web server.

```console
root@artix# dinitctl enable php-fpm
root@artix# dinitctl enable nginx
root@artix# dinitctl start php-fpm
root@artix# dinitctl start nginx
```

- If this is fresh DokuWiki installation, configure DokuWiki at [http://localhost/install.php](http://localhost/install.php)

- Cleanup.

```console
root@artix# rm -f /usr/share/webapps/dokuwiki/install.php
root@artix# rm -rf ~/wiki/
```

- - -
# Backup and Restore
- - -

- Backup personal DokuWiki files.

```console
root@artix# rsync -av --delete /usr/share/webapps/dokuwiki/conf /usr/share/webapps/dokuwiki/data <BACKUP-DIR/>
```

- Load personal DokuWiki files.

```console
root@artix# rsync -av --delete <BACKUP-DIR/> /usr/share/webapps/dokuwiki/
```
