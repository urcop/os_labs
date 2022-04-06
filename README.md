<h1 align="center">Балансировка нагрузки HAproxy</h1>

<h2 align="center">Что требуется для работы</h2>
<p>Перед установкой нам требуется кастомный CentOS с отключенным SELinux и firewall <br>
    Версия вагранта <b>2.2.19</b> или новее. Проверить: <code>vagrant --version</code>
</p>

<h2 align="center">Установка</h2>
Запускаем виртуальные машины с вагрантом. <br>

```
vagrant up
```

Запускаем playbook

```
ansible-playbook nginx.yml
```

<h2 align="center">Дальнейшие шаги</h2>
<h3>Работа балансировщика:</h3>
<img src="https://i.ibb.co/CQ9m18h/Screenshot-from-2022-04-06-21-44-57.png">
<img src="https://i.ibb.co/fv5M0sG/Screenshot-from-2022-04-06-21-45-33.png">
<h3>Проверка отказоустойчивости:</h3>
Отключаем master сервер, на котором работает страница, резервный сервер становиться master, страница продолжает работать и все четко
<img src="https://i.ibb.co/179gtHm/Screenshot-from-2022-04-06-21-44-25.png">
<img src="https://i.ibb.co/HYT1PXD/Screenshot-from-2022-04-06-21-52-55.png">
<img src="https://i.ibb.co/fv5M0sG/Screenshot-from-2022-04-06-21-45-33.png">

<h1 align="center">Радуемся и наслаждаемся</h1>
