## Состав 4IFIR

1. **[Latitude UI](LATITUDE_UI.md)** — современная графическая оболочка, полностью заменяющая стандартный qLaunch:
   * Эффект матового стекла с настройкой размытия и плотности подложек (`Настройки → Темы`).
   * Анимированные фоны для каждой игры на главном экране.
   * Смена иконок игр (пользовательский логотип или загрузка из SteamGridDB).
   * Новые версии **HB Menu** и **Альбома**.
   * Интегрированные системные шорткаты (`R + системная иконка`):
     * `R + Gameshare` — Встроенный собственный **Homebrew Store**;
     * `R + Nintendo eShop` — Встроенный **Ownfoil** (фоновая загрузка и установка игр с персонального сервера);
     * `R + Виртуальные игровые карты` — Встроенный **Файловый менеджер**.
2. **[4efirosphere](https://cloud.sintez.io/s/4IFIR?path=%2FMariko)**, форк [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere), раскрывающий разгонный потенциал консоли.
3. **[Сигпатчи](https://jits.cc/patches)**, раскрывающие игровой потенциал консоли.
4. **[hekate](https://cloud.sintez.io/s/4IFIR)**, форк [hekate](https://github.com/CTCaer/hekate), раскрывающий потенциал разгона памяти консоли.
5. **Система обновления**:
   * Нативное автоматическое обновление **4IFIR и HOS** прямо из меню `Настройки → Система` (ручные сторонние апдейтеры больше не требуются).
6. **Установленные пейлоады**:
   * [Lockpick_RCM](https://github.com/shchmue/Lockpick_RCM) — программа для дампинга ключей консоли.
   * [TegraExplorer](https://github.com/rashevskyv/TegraExplorer/) — низкоуровневый файловый менеджер для работы с системой.
   * [KipTool](https://github.com/kawaii-flesh/KipTool) — инструмент прямого редактирования параметров в `loader.kip`.
7. **Установленное Homebrew и системные сервисы**:
   * **Фоновый MTP-сервер** — постоянно активный сервер для прямой передачи файлов и быстрой установки игр при подключении консоли по USB к ПК.
   * **Встроенный Homebrew Store** — собственный магазин приложений (вызывается через `R + Gameshare`).
   * **Встроенный Ownfoil** — менеджер установки игр со своего сервера в фоновом режиме (вызывается через `R + Nintendo eShop`).
   * **Встроенный файловый менеджер** — проводник для SD-карты (вызывается через `R + Виртуальные игровые карты`).
   * [DBI](https://github.com/rashevskyv/dbi) — расширенный файловый менеджер, менеджер сохранений и установщик программ на консоль.
   * [Daybreak](https://github.com/Atmosphere-NX/Atmosphere/tree/0.14.1/troposphere/daybreak) — инструмент для резервной/оффлайн установки обновлений HOS.
   * [Fizeau](https://github.com/averne/Fizeau) — программа, позволяющая менять параметры отображения цветов на экране.
   * [SysDVR](https://cloud.sintez.io/s/4IFIR), форк [SysDVR](https://github.com/exelix11/SysDVR) — программа для беспроводной передачи изображения с консоли на ПК или другие устройства.
   * [sys-ftpd](https://cloud.sintez.io/s/4IFIR), форк [sys-ftpd](https://github.com/cathery/sys-ftpd) — FTP сервер, работающий в фоне.
   * [Mhz] — программа для теста процессора.
   * [MicroMemBench] — программа, показывающая результаты производительности памяти.
   * [MicroMemTest] — стресс-тест памяти.
   * [RaytracingNX] — тестирование графического процессора.

8. **Установленные модули и оверлеи**. Модули — это дополнительные компоненты, работающие внутри Atmosphere и позволяющие использовать разгон, сторонние геймпады, оверлеи и прочее:
   * [SaltyNX](https://cloud.sintez.io/s/4IFIR), форк [SaltyNX](https://github.com/masagrator/SaltyNX) — фоновый модуль модификации процессов (требуется для FPSLocker, ReverseNX и др.).
   * [ReverseNX-Tool](https://cloud.sintez.io/s/4IFIR), форк [ReverseNX-Tool](https://github.com/masagrator/ReverseNX-Tool) — принудительное переключение режимов работы (Docked / Handheld).
   * [sys-clk](https://cloud.sintez.io/s/4IFIR), форк [sys-clk](https://github.com/retronx-team/sys-clk) — модуль аппаратного разгона CPU, GPU и памяти.
   * [sys-con](https://github.com/cathery/sys-con) — модуль подключения USB-геймпадов сторонних производителей.
   * **[Ultrahand Overlay Menu](https://github.com/ppkantorski/Ultrahand-Overlay)** — современное меню оверлеев и пакетов нового поколения (вызывается по `(L)+(R)+(▲)`):
     - **[4IFIR Wizard](https://github.com/qret/Ultrahand-4IFIR-Wizard)** — специализированный интерактивный конфигуратор разгона, вольтажей, таймингов и оптимизаций eBamatic.
     - [FPSLocker](https://github.com/masagrator/FPSLocker) — блокировка и регулировка частоты кадров в играх.
     - [nx-ovlloader](https://github.com/WerWolv/nx-ovlloader/) — системный загрузчик оверлеев для Ultrahand.
     - [ovlEdiZon](https://github.com/proferabg/EdiZon-Overlay/releases) — оверлей для читов.
     - [ovlSysmodules](https://github.com/WerWolv/ovl-sysmodules/) — включение и отключение системных модулей.
     - [InfoNX-ovl](https://github.com/renA21/InfoNX/) — информация о батарее, энергопотреблении и компонентах.
     - [QuickNTP](https://github.com/nedex/QuickNTP) — синхронизация системного времени через интернет.
     - [Status-Monitor-PRO](https://cloud.sintez.io/s/4IFIR), форк [Status-Monitor-Overlay](https://github.com/masagrator/Status-Monitor-Overlay) — внутриигровой монитор метрик и счетчик FPS в реальном времени.
     - [sys-ftpd-ovl](https://github.com/SegFault42/sys-ftpd-ovl) — оверлей управления фоновым FTP через Ultrahand.
     - [sysdvr-overlay](https://github.com/Hartie95/sysdvr-overlay) — оверлей настройки SysDVR через Ultrahand.
     - [sys-clk overlay](https://github.com/retronx-team/sys-clk) — оверлей управления частотами sys-clk.
     - [Fizeau overlay](https://github.com/averne/Fizeau) — оверлей цветокоррекции экрана.
     - [ReverseNX-RT overlay](https://github.com/masagrator/ReverseNX-RT) — оверлей переключения портативного/док режима на лету.
