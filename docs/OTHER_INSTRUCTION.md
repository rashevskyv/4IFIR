## Обновление прошивки в EmuNand 
>Данная инструкция предполагает, что вы используете **EmuNand**!!!  
>Часть информации взята - https://switch.customfw.xyz/update-fw (Из России с VPN)

>Обязательно следуйте инструкции именно в том порядке, в котором она написана: сперва обновление 4IFIR, затем обновление системного ПО! Иначе, приставка просто не запустится. Если по какой-то нелепой причине, вы обновили системное ПО, но не обновили 4IFIR, обновите 4IFIR!
****

>Внимание! Перед обновлением перейдите в папку atmosphere/contents и удалите следующие папки с карты памяти, если таковые имеются:  
>* 0100000000001000   
>* 0100000000001013  
>* 0100000000000352
*** 

По этой инструкции можно менять версию своего ПО на любую.
1. [Обновление 4IFIR до актуальной версии](#1-Обновление-4IFIR-до-актуальной-версии)
1. [Скачивание прошивки](#2-скачивание-прошивки)
1. [Установка на консоль](#3-установка-на-консоль)
2. [Обновление официальной прошивки](#4-обновление-официальной-прошивки)
3. [Возможные проблемы](#Возможные-проблемы)  

### 1. Обновление 4IFIR до актуальной версии
1. Запустите [**Homebrew Launcher**](https://switch.customfw.xyz/hbl) > **All in One Updater**
   * Если вместо запуска приложения вы получаете черный экран, перекачайте приложение вручную из его [репозитория](https://github.com/HamletDuFromage/aio-switch-updater) и вручную пропишите в Custom downloads > Add custom link этот адрес `https://github.com/rashevskyv/4ifir-checker/releases/latest/download/AIO.zip`, после чего перезапустите приложение
1. Перейдите в **Custom Downloads** > **Refresh** > **Continue**, на запрос о перезаписи `ini`, выберите **Yes**
1. Перейдите в **Custom Downloads** > **4IFIR** > **Continue**, на запрос о перезаписи `ini`, выберите **Yes**, на запрос о переустановке hekate выберите **No**, консоль перезагрузится

### 2. Скачивание прошивки
1. Запустите [**Homebrew Launcher**](https://switch.customfw.xyz/hbl) > **All in One Updater**
1. Перейдите в меню **Скачать прошивку** и выбекрите необходимую версию.
1. Нажмите (A), нажмите **Продолжить**, чтобы начать закачку прошивки. Программа сама скачает выбранную версию системного ПО и распакует её в папку firmware.

### 3. Установка на консоль
1. Запустите [**Homebrew Launcher**](https://switch.customfw.xyz/hbl) > **Daybreak** > **Install**
2. Перейдите в папку firmware, в ней находится прошивка Х.Х.Х, скопированная ранее, и нажмите (A)
3. Дождитесь окончания обработки прошивки и нажмите **Continue**, чтобы начать установку
4. На вопрос **Select settings mode - preserve settings** - Позволит сохранить настройки
5. **Select driver variant - Install (FAT32 + exFAT)** - установится доп. драйвер поддержки exFAT 
6. После окончания установки нажмите **Reboot** для перезагрузки, или **Shutdown**, чтобы выключить приставку

### 4. Обновление официальной прошивки
1. Для обновления прошивки до актуальной версии в **STOCK/SEMI-STOCK**: Загрузитесь в **STOCK/SEMI-STOCK** и обновите консоль штатными методами:
2. Системные настройки > Система > Обновление системы  

***


### Возможные проблемы 
1. Черный экран после лого Nintendo:  
   >попробуйте выполнить - [Отладочную установку](INSTAL_4IFIR.md#отладочная-установка-требуется-пк)  
1. Черный экран после лого Nintendo (если не помогла отладочная установка):  
   >Скачайте [KipTool](https://github.com/kawaii-flesh/KipTool/releases/)  
   >Закиньте файл kiptool.bin в директорию bootloader/payloads  
   >Далее Hekate > payloads > kiptool.bin.  
   >Далее Kip Wizard - CPU - speedshift поставьте **25 или 100** вместо нуля и не забудьте apply changes.  
   >Перезагрузите консоль  
   >Это может починить запуск в атмосферу


## Восстановление работоспособности, после обновления HOS.    
**(на случай, если вы обновили прошивку, но забыли перед этим обновить 4IFIR)**

### 1. Обновление 4IFIR до актуальной версии

**Если нет картридера:**
1. Выключить консоль.
2. Нажать кнопку включения, затем нажимать кнопку «VOL-» пока не загрузится 4ekate.
3. Подключить Nindendo Switch к ПК проводом.
4. Нажать Tools>USB Tools>SD card.
5. На ПК появится доступ к SD карте.
6. Удалить с SD карты все папки и файлы КРОМЕ двух папок:  
**emuMMC**  
**Nindendo**  
**По желанию можно оставить бекапы сохранений и системы**  
8. Скопировать содержимое архива  [4IFIR.ZIP](https://github.com/rashevskyv/4ifir-checker/releases/latest/download/4IFIR.zip) (не сам архив, а файлы и папки находящиеся в нём) в корень SD карты.
9. Сделать безопасное извлечение SD карты на ПК.
10. На Switch нажать Close.
11. Отсоединить провод. 
12. На Nindendo Switch нажать Close>Home>Reboot>Normal.

**Если есть картридер:**
1. Выключить консоль.
2. Извлечь из консоли SD карту, вставить SD карту в картридер и вставить картридер в ПК.
3. На ПК появится доступ к SD карте.
4. Удалить с SD карты все папки и файлы КРОМЕ двух папок:  
**emuMMC**  
**Nindendo**  
**По желанию можно оставить бекапы сохранений и системы**   
6. Скопировать содержимое архива [4IFIR.ZIP](https://github.com/rashevskyv/4ifir-checker/releases/latest/download/4IFIR.zip)(не сам архив, а файлы и папки находящиеся в нём) в корень SD карты.
7. Сделать безопасное извлечение SD карты на ПК.
8. Извлечь картридер из ПК, извлечь SD карту из картридера и вставить SD карту в консоль.
9. Включить консоль
