```
sudo /usr/pgadmin4/bin/setup-web.sh

select pin_password = crypt(CAST('12345678' AS TEXT), pin_password) as authentication FROM app_usuario WHERE email='gary.2810.dav@gmail.com'
```
