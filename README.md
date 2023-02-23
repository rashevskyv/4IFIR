# 4IFIR 

Сборник модифицированных компонентов, призванный максимально упростить разгон Nintendo Switch, а также улучшить пользовательский опыт за счет дополнительного функционала.
Модификация предназначена для тех, кто хотел бы выжать максимум из своей консоли, добиться графики консольного уровня (рекомендуется использовать в связке с [модами ув. ECLIPSE00074](https://4pda.to/forum/index.php?showuser=176532)), разблокировать 60fps, ускорить загрузки, зафиксировать нативное разрешение, эмулировать PS2 в fullspeed-е (при наличии эмулятора для Switch, разумеется), снизить шум системы охлаждения и т.д. 

В случае с 4IFIR, под разгоном подразумевается не разблокировка частот в пределах штатных таблиц, а именно что разгон, включающий overvolting каждого разгоняемого компонента. Устанавливая модификацию без теоретической подготовки, вы снимаете с автора ответственность за любые возможные последствия, включая выход консоли из строя, и полностью берете риски на себя. По моим схемотехническим расчетам, если они верны, проблем возникнуть не должно. В настоящий момент прецедентов выхода из строя: 0. Тем не менее, ваша консоль может стать первой, абсолютно безопасным разгон быть не может по определению, я вас предупредил. От потенциальных программных проблем вас застрахует использование EmuNand, FAT32 и наличие бекапов. Во-избежание конфликтов, рекомендуется проводить установку начисто.

## Что может 4IFIR

* Разгон вплоть до значений в 2397 Mhz для CPU, 1536 Mhz для GPU, 2131 Mhz для RAM (точный потолок значения индивидуален для каждой консоли)
* Автоматический овервольтинг
* Автоматический буст при загрузке игры 
* Поддержка говернора - снижения потребления ресурсов когда они не требуются консоли 
* Видеозапись без ограничений во всех играх, кроме нескольких не поддерживаемых
* Беспроводная видеотрансляция с повышенным битрейтом, 60 кадрами в секунду, на внешние мониторы - практически без задержек
* Эмуляция док режима
* Ускоренная зарядка
* Снижение порога тока для Official Charger
* Радикальное снижение шума системы охлаждения
* Overlay c FPS и системными метриками
* Над-экранное меню, для управления перечисленными возможностями на лету
* Фоновый FTP сервер
* Необходимые для совместной работы всего перечисленного системные модули

## Состав 4IFIR:

1. **[4efirosphere](https://cloud.sintez.io/s/4IFIR?path=%2FMariko)**, форк [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere), раскрывающий разгонный потенциал консоли
1. **[Сигпатчи](https://jits.cc/patches)**, раскрывающие игровой потенциал консоли
1. **[4ekate](https://cloud.sintez.io/s/4IFIR)**, форк [hekate](https://github.com/CTCaer/hekate), раскрывающий потенциал разгона памяти консоли
1. **Установленные пейлоады**:
  * [Lockpick_RCM](https://github.com/shchmue/Lockpick_RCM) - программа для дампинга ключей консоли
  * [TegraExplorer](https://github.com/rashevskyv/TegraExplorer/) - низкоуровневый файловый менеджер для работы с системой 
1. **Установленное Homebrew**
  * [AiO Switch Updater](https://github.com/rashevskyv/kefir-updater) - программа для обновления 4IFIR до актуальной версии 
  * [Homebrew App Store 2.2](https://github.com/fortheusers/hb-appstore/releases) - магазин приложений
  * [Daybreak](https://github.com/Atmosphere-NX/Atmosphere/tree/0.14.1/troposphere/daybreak) - программа для обновления системного ПО
  * [DBI](https://github.com/rashevskyv/dbi) - потенциально лучший файловый менеджер, менеджер сохранений и установщик программ на консоль
  * [Fizeau](https://github.com/averne/Fizeau) - программа, позволяющая менять параметры отображения цветов на экране
  * [Battery Desync Fix NX](https://github.com/CTCaer/battery_desync_fix_nx) - программа для устранения десинхронизации батареи. Использовать только тогда, когда аккумулятор за 5 минут разряжается до 1%, а потом на нем работает в течении двух часов. Используйте строго по инструкции в репозитории программы, если не хотите потерять весь потенциал емкости вашей батареи. **Не используйте без необходимости!**
  * [SysDVR](https://cloud.sintez.io/s/4IFIR), форк [SysDVR](https://github.com/exelix11/SysDVR) - программа для беспроводной передачи изображения с консоли на ПК или другие устройства
  * [sys-ftpd](https://cloud.sintez.io/s/4IFIR), форк [sys-ftpd](https://github.com/cathery/sys-ftpd) - FTP сервер, работающий в фоне
1. **Установленные модули**. Модули - это дополнительные компоненты, работающие внутри Atmosphere и позволяющие делать разные крутые штуки, как-то использование xbox-сoвместимых контроллеров, эмуляцию amiibo, разгон и прочее
  * [SaltyNX](https://cloud.sintez.io/s/4IFIR), форк [SaltyNX](https://github.com/masagrator/SaltyNX), фоновый модуль, позволяющий модифицировать файлы\процессы в консоли, поддерживает плагины. Не совместим в 32-х битными играми (список на гитхабе проекта). Требуется для работы некоторых других модулей (например, ReverseNX)
  * [ReverseNX-Tool](https://cloud.sintez.io/s/4IFIR), форк [ReverseNX-Tool](https://github.com/masagrator/ReverseNX-Tool) - программа, которая принудительно меняет режимы работы консоли на докстанцию и портатив, вне зависимости от того находится консоль в доке или нет. Потенциально улучшает картинку в портативе за счет тогоЮ что рендерит изображение так, как будто консоль в докстанции. 
  * [sys-clk](https://cloud.sintez.io/s/4IFIR), форк [sys-clk](https://github.com/retronx-team/sys-clk), модуль отвечающий за разгон процессора, памяти, GPU, что приводит к лучшей производительности
  * [sys-con](https://github.com/cathery/sys-con) - модуль, позволяющий подключать к консоли по USB практически любые геймпады
  * [Tesla Overlay Menu](https://cloud.sintez.io/s/4IFIR), форк [Tesla Overlay Menu](https://github.com/WerWolv/Tesla-Menu/) - специальное оверлей-меню для взаимодействия с системой: разгон, управление режимами через ReverseNX, включение читов, прочее. 
    - [nx-ovlloader](https://github.com/WerWolv/nx-ovlloader/) - с помощью этого модуля осуществляется переключение установленных модулей через Tesla 
    - [ovlEdiZon](https://github.com/proferabg/EdiZon-Overlay/releases) - оверлей для использования читов
    - [ovlSysmodules](https://github.com/WerWolv/ovl-sysmodules/) - оверлей для включения и отключения установленных системных модулей
    - [InfoNX-ovl](https://github.com/renA21/InfoNX/) - оверлей, показывающий информацию о батарее/CPU/GPU/DRAM(EMC)
    - [QuickNTP](https://github.com/nedex/QuickNTP) - оверлей для синхронизации часов через интернет, поскольку родная в чифире отключена 
    - [Status-Monitor-PRO](https://cloud.sintez.io/s/4IFIR), форк [Status-Monitor-Overlay](https://github.com/masagrator/Status-Monitor-Overlay) - модуль для контроля параметров консоли в реальном времени. Может выступать в качестве счетчика FPS в левом верхнем углу экрана
    - [sys-ftpd-ovl](https://github.com/SegFault42/sys-ftpd-ovl) - оверлей для работы с sys-ftpd через Tesla 
    - [sysdvr-overlay](https://github.com/Hartie95/sysdvr-overlay), форк [sysdvr-overlay](https://github.com/Hartie95/sysdvr-overlay) - оверлей для настройки SysDVR через Tesla 
    - sys-clk overlay - оверлей для управления разгоном через Tesla 
    - Fizeau overlay  - оверлей для настройки Fizeau через Tesla 
    - ReverseNX-RT overlay - оверлей для переключения режима работы консоли через Tesla 

## Установка 

**ВАЖНО! Строго следуйте инструкции и не откланяйтесь от нее. В случае возникновения проблем, вернитесь к инструкции и переустановите чифир начисто.**

### Установка с нуля (она же переустановка начисто):
1. Удалите с карты памяти всё, кроме папок Nintendo и emummc (если есть)
1. Распакуйте [4IFIR](http://sintez.io/4IFIR.zip) на вашу консоль
1. Установите [AiO Updater](https://github.com/HamletDuFromage/aio-switch-updater)
1. Распакуйте [это](http://sintez.io/aio.zip) на вашу консоль (если вы живете в Украине, то сверху добавьте [это](https://t.me/kefir_switch/48074/69975))
1. Перезагрузите консоль

### Установка (с кефира или другой сборки):
Сделайте чистую установку 

### Обновление (переход с 1.1):
1. Установите 4IFIR через AIO-Updater
2. Перезагрузите консоль

## Лицензии

Ниже перечислены лицензии тех программ, которые были модифицированы специально для 4IFIR. Следуя положениям этих лицензий, весь код в модификациях распространяется под той же лицензией

GPL 2.0: 
  * [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere)
  * [hekate](https://github.com/CTCaer/hekate)
  * [SysDVR](https://github.com/exelix11/SysDVR)
  * [sysdvr-overlay](https://github.com/Hartie95/sysdvr-overlay)
  * [Tesla Overlay Menu](https://github.com/WerWolv/Tesla-Menu/)
  * [Status-Monitor-Overlay](https://github.com/masagrator/Status-Monitor-Overlay)
GPL 3.0: 
  * [ReverseNX-Tool](https://github.com/masagrator/ReverseNX-Tool)
  * [sys-ftpd](https://github.com/cathery/sys-ftpd)
THE BEER-WARE LICENSE: 
  * [sys-clk](https://github.com/retronx-team/sys-clk)
No license: 
  * [SaltyNX](https://github.com/masagrator/SaltyNX)


## Благодарности 

Atmosphere NX team
KymPossibl
KazushiMe
RetroNX team
ChanseyIsTheBest
4PDA
