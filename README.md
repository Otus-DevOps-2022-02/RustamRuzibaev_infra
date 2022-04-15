# RustamRuzibaev_infra
## Доступ к someinternalhost в одну команду
Для доступа к someinternalhost в одну команду из рабочего устройства можно использовать ProxyJump:
ssh -J user@bastion user@someinternalhost

## Доступ к someinternalhost по алиасу
Нужно создать файл config в директории ~/.ssh/ и назначить права доступа на исполнение:
touch ~/.ssh/config
chmod a+x ~/.ssh/config

В файл config добавить следующий текст:

host bastion
        Hostname 51.250.14.188
        User appuser

host someinternalhost
        Hostname 10.128.0.20
        User appuser
        ProxyJump bastion

##Данные для проверки
bastion_IP = 51.250.14.188 someinternalhost_IP = 10.128.0.20
