To be able to login, you will need a super user. To create it, execute the following command:

```shell
docker-compose run --rm webserver createsuperuser
```
This will prompt you to set a username, an optional e-mail address and finally a password (at least 8 characters).