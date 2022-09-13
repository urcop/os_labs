ридми украл у ксюши но со своими скринами!

# Лабораторная работа №2

## Создайте двух пользователей: user1 и user2. Установите для них пароли и войдите в систему под именем одного из созданных пользователей

Создали пользователей

<a href="https://imgbb.com/"><img src="https://i.ibb.co/6RfR7k5/1z.png" alt="1z" border="0"></a>

Установили пароли

<a href="https://imgbb.com/"><img src="https://i.ibb.co/Hqfq99H/2z.png" alt="2z" border="0"></a>

Зашли под именем юзера

<a href="https://imgbb.com/"><img src="https://i.ibb.co/XVSTDp3/1-3z.png" alt="1-3z" border="0"></a>

## Заблокируйте ранее добавленную учетную запись пользователя user1, выйдите из системы и убедитесь, что учетная запись больше не может обращаться к системе. Затем разблокируйте учетную запись user1. Создайте две новые группы, называемые group1 и group2. Выполните команду, которая добавит учетную запись user2 в обе эти группы. Используйте одиночную команду для добавления этого пользователя сразу к двум группам.

Блокировка учетной записи

<a href="https://imgbb.com/"><img src="https://i.ibb.co/KmbCkwB/2-1z.png" alt="2-1z" border="0"></a>

Разблокировка учетной записи

<a href="https://ibb.co/KhL32KW"><img src="https://i.ibb.co/V9QPgwT/2-2z.png" alt="2-2z" border="0"></a>

Создание групп

<a href="https://ibb.co/fVwg5xk"><img src="https://i.ibb.co/cKnBHr6/2-gz.png" alt="2-gz" border="0"></a>

## Добавьте пользователя user2 в соответствующий файл, чтобы пользователь имел возможность выполнять команды с привилегиями суперпользователя/root. Войдя в систему как пользователь user2, создайте небольшой текстовый файл с любым содержимым в каталоге /root.

<a href="https://ibb.co/Cn38wJr"><img src="https://i.ibb.co/p3Bw1Wm/3-1z.png" alt="3-1z" border="0"></a>

<a href="https://imgbb.com/"><img src="https://i.ibb.co/Q9CN6Kt/3-2z.png" alt="3-2z" border="0"></a>

Cоздаем файлик

<a href="https://imgbb.com/"><img src="https://i.ibb.co/LgWH6Rt/3-3z.png" alt="3-3z" border="0"></a>

## Войдите в систему под именем пользователя root. Создайте новый каталог в домашнем каталоге пользователя root, называемый ‘filemaintenance’. Перейдите в этот каталог и создайте три файла: file1, file2 и file3. Вернитесь в родительский каталог (домашний каталог root), а затем скопируйте файлы, расположенные в filemaintenance, в домашний каталог root.

<a href="https://ibb.co/HKtSm0h"><img src="https://i.ibb.co/8mrCFJY/5z.png" alt="5z" border="0"></a>

## Вернитесь в домашний каталог пользователя root. Переместите каталог «filemaintenance» и все его содержимое в другой каталог с именем «movedfiles».

<a href="https://ibb.co/c235hhD"><img src="https://i.ibb.co/j3fKkkg/4z.png" alt="4z" border="0"></a>

## 6) Заблокируйте учетную запись user1 еще раз. Выйдите из системы. Попытайтесь войти в систему три раза, используя недавно заблокированную учетную запись пользователя user1. После третьей неудачной попытки войдите в систему как пользователь root и разблокируйте пользователя. Затем просмотрите последние 10 строк соответствующего файла журнала в системе, которые будут отображать эти неудачные попытки входа.

<a href="https://ibb.co/ZNt19pJ"><img src="https://i.ibb.co/vDgv96B/6z.png" alt="6z" border="0"></a>

## Войдите в систему под учетной записью root, произведите поиск в системе файла конфигурации с названием «ld.so.conf» и вызовите строку с его местоположением и адресом. Перенаправьте содержимое этого файла во второй файл с именем ld.so.conf.out в вашем домашнем каталоге.

<a href="https://ibb.co/hW4cjXw"><img src="https://i.ibb.co/NjJrP1b/7z.png" alt="7z" border="0"></a>

## Скопируйте следующие файлы в домашний каталог пользователя root: • /etc/hosts • /var/log/ dmesg• /usr/bin/whoami Измените права доступа каждого файла следующим образом: • hosts — только пользователь-владелец файла может читать/записывать/выполнять, нет прав доступа для группы и остальных пользователей • dmesg – пользователь-владелец может читать/записывать, группа и остальные пользователи — читать/выполнять • whoami — каждый имеет право на выполнение, никаких других разрешений

<a href="https://ibb.co/zH2dZN2"><img src="https://i.ibb.co/5xjZL2j/8-1z.png" alt="8-1z" border="0"></a>

<a href="https://ibb.co/WvKyk5K"><img src="https://i.ibb.co/Swvntyv/8-2z.png" alt="8-2z" border="0"></a>

## Войдите в систему как root, если вы еще этого не сделали. Создайте задание cron, которое будет создавать список всех пользователей, каталоги которых имеются в домашнем каталоге (home) каждый день в полдень и сохранять данный список в файле, называемом «cronoutput.out», который вы создадите в своей домашней директории.

## Создайте еще одно задание cron, выполняющее тот же процесс, что и последний, в 15 минут каждого часа (0:15, 1:15, 2:15 и т.д).

## Создайте еще одно задание cron, которое выполняет тот же процесс, что и последние два, но каждые 3 минуты между полуночью и 1:00 каждого 1-го числа месяца.

<a href="https://imgbb.com/"><img src="https://i.ibb.co/xz9x01m/cron.png" alt="cron" border="0"></a>

## Выполните команду для подготовки вашей системы к установке пакетов, используя apt-get или yum. Произведите поиск доступных пакетов и описаний для веб- сервера Apache. Перенаправьте эти результаты в файл с именем «search.out» в домашнем каталоге root.

<a href="https://ibb.co/c28c1fY"><img src="https://i.ibb.co/kqDgxbm/13.png" alt="13" border="0"></a>

##  Установите все доступные системные обновления для вашей системы. Так же, установите веб-сервер Apache. При выполнении установки передайте соответствующий параметр в командную строку, чтобы вас не попросили подтвердить установку

<a href="https://ibb.co/c28c1fY"><img src="https://i.ibb.co/kqDgxbm/13.png" alt="13" border="0"></a>

<a href="https://ibb.co/cDv9YQr"><img src="https://i.ibb.co/SRxgfB3/pes.jpg" alt="pes" border="0"></a>


