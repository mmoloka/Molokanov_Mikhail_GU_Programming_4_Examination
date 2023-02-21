1. Используя команду `cat` в терминале операционной системы *Linux*, создать
два файла: Домашние животные (заполнив файл собаками, кошками,
хомяками) и Вьючные животными (заполнив файл лошадьми, верблюдами и
ослами), а затем объединить их. Просмотреть содержимое созданного файла.
Переименовать файл, дав ему новое имя (Друзья человека).
-----
mike@mike-VirtualBox:~ cat > pets  
dog1 Muhtar    
dog2 Lassie  
cat1 Murka  
cat2 Barsik  
hamster1 Bunny  
hamster2 Brut  
mike@mike-VirtualBox:~ cat > sumpters  
horse1 Vegas  
horse2 Angel  
camel1 Mahmut  
camel2 Bongo  
donkey1 Dora  
donkey2 Ajax  
mike@mike-VirtualBox:~ cat pets sumpters > pets_sumpters  
mike@mike-VirtualBox:~ more pets_sumpters  
mike@mike-VirtualBox:~ mv pets_sumpters friends_of_man  

2. Создать директорию, переместить файл туда.
-----
mike@mike-VirtualBox:~ mkdir nursey  
mike@mike-VirtualBox:~ mv friends_of_man nursey/  

3. Подключить дополнительный репозиторий *MySQL*. Установить любой пакет из этого репозитория.  
-----
mike@mike-VirtualBox:~ sudo su  
mike@mike-VirtualBox:~ wget https://repo.mysql.com//mysql-apt-config_0.8.24-1_all.deb  
mike@mike-VirtualBox:~ dpkg -i mysql-apt-config_0.8.24-1_all.deb  
mike@mike-VirtualBox:~ apt update  
mike@mike-VirtualBox:~ apt install mysql-server  

4. Установить и удалить *deb*-пакет с помощью `dpkg`.
-----
mike@mike-VirtualBox:~ wget
https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/containerd.io_1.6.9-1_amd64.deb  
mike@mike-VirtualBox:~ dpkg -i containerd.io_1.6.9-1_amd64.deb  
mike@mike-VirtualBox:~ dpkg -r containerd.io  

5. Выложить историю команд в терминале *ubuntu*.
*****
