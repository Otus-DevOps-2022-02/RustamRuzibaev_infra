# RustamRuzibaev_infra
## ДЗ 3
Доступ к someinternalhost в одну команду:
Для доступа к someinternalhost в одну команду из рабочего устройства можно использовать ProxyJump:
ssh -J user@bastion user@someinternalhost

Доступ к someinternalhost по алиасу:
Нужно создать файл config в директории ~/.ssh/ и назначить права доступа на исполнение:
touch ~/.ssh/config
chmod a+x ~/.ssh/config

В файл config добавить следующий текст:

host bastion
        Hostname 51.250.65.17
        User appuser

host someinternalhost
        Hostname 10.128.0.20
        User appuser
        ProxyJump bastion

Данные для проверки
bastion_IP = 51.250.65.17
someinternalhost_IP = 10.128.0.20

## ДЗ 4 Деплой тестового приложения:
testapp_IP = 51.250.64.154
testapp_port = 9292

Скрипт для создания reddit-app инстанса:
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=infra-ru-central1-a,nat-ip-version=ipv4, nat-address=51.250.86.251\
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=metadata.yml
## ДЗ 5 Работа с Packer
Произведена работа с Packer
Создан шаблон ubuntu16.json для сборки образа с предустановленными mongodb и ruby.
Создан шаблон variables.json.example для создания диска с образом из ubuntu16.json.
Создан шаблон key.json.example для ключей ssh.
Написал скрипты deploy.sh и puma.sh для корректной работы системы на основе образа с запеченным приложением.
Запек immutable образ с приложением, которое стартует при разворачивании VM (immutable.json)
Создал скрипт create-reddit-vm.sh в директории config-scripts, который из шаблона immutable.json создает образ и поднимает виртуалку.
## ДЗ 6 Terraform-1
Выполнено знакомство с инструментом terraform
С помощью terraform была описана и запущена ВМ на yandex cloud
Были созданы файлы с описанием переменных необходимых для описания виртуальной машины.
