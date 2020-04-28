
Информация для автоматического обновления ip в сервисе ipnodns/noipno
------------

Вы можете производить автоматическое обновление записей, это можно выполнить простыми GET\POST запросами, 
несколько готовых примеров ниже:

- [golang](https://github.com/vaizmanai/ipnodns_example/blob/master/examples/example.go)
- [perl](https://github.com/vaizmanai/ipnodns_example/blob/master/examples/ddns.pl)
- [postman](https://github.com/vaizmanai/ipnodns_example/blob/master/examples/postman_ipnodns.json) - детализированный вариант для самостоятельного использования

Скомпилированный вариант для Windows:

- [ddns-1](https://github.com/vaizmanai/ipnodns_example/blob/master/clients/ddns.7z)
- [ddns-2](https://github.com/vaizmanai/ipnodns_example/blob/master/clients/ddns-1.7z)

Для обновления с <b>железных роутеров и камер</b> которые поддерживают сервис вроде dyndns, 
необходимо использовать следующие настройки:

-   DDNS Service:	Custom
-   DYNDNS Server:	ipnodns.ru
-   User name:	'USERNAME'
-   Password:	'PASSWORD'
-   Hostname:	'xxx.ipnodns.ru'
-   URL: /cgi-bin/dyndns.cgi?hostname=\
где "User name" и "password" данные Вашей учетной записи, а "hostname" это имя которое вы хотите обновить.
	
Достаточно полную информацию по вариациям настроек DDNS можно найти в [wiki dd-wrt](http://www.dd-wrt.com/wiki/index.php/DDNS)

