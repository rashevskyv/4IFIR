# Проблемы и их решения

1. [Проблемы связаные с 4IFIR](#Проблемы-связаные-с-4IFIR)
2. [Проблемы с батареей](#Проблемы-с-батареей)
3. [Прочие проблемы](#Прочие-проблемы)
4. [FAQ](#FAQ)
***

## Проблемы связаные с 4IFIR

* #### Консоль зависает, спустя 10-15 минут игры:    
>4IFIR WiZard - 4advanced - CPU - Low Mhz undervolt - 1 (или другое значение отличное от 0, если знаете за что отвечает этот пункт).   
>Если не помогло - можно попробовать:  
>4IFIR WiZard - 4advanced - CPU - Speedshift - ECO ST1. 

* #### Консоль зависает, практически сразу после включения: 
>Скорее всего не хватает вольтажей для дефолтного режима, чтобы поднять вольтаж:  
>Загрузитесь в Safe Mode или используйте Kiptool.       
>4IFIR WiZard - 4advanced - RAM - pMeh 20 - 4.

* #### Консоль зависает, после выбора профиля EMC - 4IFIT Optimized S: 
>Консоль не работает с дефолтной частотой в 26хх MHz:     
>4IFIR WiZard - 4advanced - RAM - Ram MHz - 2400 - reboot. 

* #### Черный экран после лого Nintendo:  
>попробуйте выполнить - [Отладочную установку](INSTAL_4IFIR.md#отладочная-установка-требуется-пк)

* #### Черный экран после лого Nintendo (если не помогла отладочная установка):  
>1. Hekate > payloads > kiptool.bin.  
>2. Kip Wizard - CPU - speedshift поставьте **100** вместо нуля и не забудьте apply changes.  
>3. Перезагрузите консоль  
>Это может починить запуск в атмосферу

* #### При игре в доке на экране телевизора появляются полосы.
>Скорей всего, это связанно с Smeh 8, отвечающим за повышение эффективности памяти в режиме Optimized E. Для решения этой проблемы сбросьте sMeh 8 в 0
>
***

## Проблемы с батареей 

* #### Батарея начала разряжаться до 1% со 100% за считаные минуты, однако без проблем работает на 1% несколько часов 

>Контроллер питания рассчитан на пиковое потребление энергии примерно в 15W, если оно будет превышено, то консоль аварийно активирует защиту и выключится. Вам нужно снизить аппетиты, поскольку это влияет на данные калибровки контроллера. Консоль может считать, что аккумулятор не вывез, и снизить оценку его остаточной ёмкости, на 1% при каждом сбое. Это может привести к тому, что индикатор заряда консоли начинает мгновенно опускаться до 1% заряда, когда дается нагрузка на аккумулятор. Для решения этой проблемы существует [Battery Desync Fix NX](https://github.com/CTCaer/battery_desync_fix_nx). 

* #### При игре с включенным разгоном через некоторое время показывается значок пустой батареи 

>Контроллер питания рассчитан на пиковое потребление энергии примерно в 15W, если оно будет превышено, то консоль аварийно активирует защиту и выключится. Это и происходит. Вероятно, вы привысили установленный в контроллере порог. Умерьте пыл и сбавьте значения частот.

***

## Прочие проблемы 

* #### Не запускается Ведьмак 3/Resident Evil Revelations
>**HB Menu** > **SysDVR** > **DVR-Patches** > **Uninstall** > **Reboot**

* #### FPS в игре всегда показывает 0/254 или ReverseNX не переключает режимы
>Вероятна ваша игра не совместима с **SaltyNX**, который отвечает за работу эти функций. Список несовместимых игр находится [здесь](https://github.com/masagrator/SaltyNX#list-of-titles-not-compatible-with-pluginspatches)

***

## FAQ 

**В**: Как использование 4IFIR влияет на срок службы батареи?\
**О**: Если коротко, то никак вообще. Аккумулятор не деградирует от силы тока, а только при достижении определенной температуры. Однако, встроенные механизмы защиты, основанные на законах физики, разрывают цепь питания, задолго до того, как достигнутые температуры успевают навредить аккумулятору, чтобы предотвратить деградацию химических свойств ячеек.  
MARIKO оснащен контроллером PMIC MAX77812 рассчитанного на токи до 6A CPU / 12A GPU. Достиг лимита = поймал маслину ушел в защиту.  
ERISTA, внезапно, оснащена более мощным контроллером PMICs MAX77621 на 16A CPU / 16A GPU.  
 
**В**: Моя батарея деградировала?\
**О**: Она не деградировала. У нее сбилась калибровка. Вернуть заводскую емкость батареи можно по инструкции выше 

**В**: Свитч выключается при использовании разгона\
**О**: Вероятно ваш экземпляр не вывозит значения, которые вы задали. Пробуйте их понизить

**В**: Свитч разряжается до 1% со 100 за 10 минут\
**О**: Смотрите выше в разделе Проблемы и решения 

**В**: Нет говернора\
**О**: Включите **4IFIR Miracle** > **Miscellaneous** > **Frequency Governor (Experimental)**, тогда оба говернора появятся в **4IFIR Miracle** > **Edit app Profile**

**В**: Частоты прыгают\
**О**: При работе говернора так и должно быть

**В**: Не могу удалить аккаунт\
**О**: **DBI** > **Tools** > **Delete account...**
