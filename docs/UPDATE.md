## Обновление от 20.09.2024 - 4IFIR 2.4 Gamechanger
1. Pre-release -> Release. Повышение стабильности.
2. EMC - Default стал динамическим EMC - default = последнему активному режиму EMC. Если Вы желаете, чтобы по умолчанию на домашнем экране система переходила в EMC - Optimized режим, установите его через Edit Profile для домашнего экрана. Если же Вы хотите, чтобы для всех приложений по умолчанию, магнитило с иных режимов, на Optimized, установите его в Global Overrides профиль, и будет так, как Вы хотите, только без микро-статтеров на внутренних экранах загрузок в играх, в момент догрузки.  

## Обновление от 13.09.2024 - 4IFIR 2.4 Gamechanger
1.  Восстановлена работа док-режима.  

## Обновление от 20.08.2024 - 4IFIR 2.4 Gamechanger
1.  В сборку добавлен KipTool - это payload-based инструмент, позволяющий редактировать значение параметров в вашем loader.kip файле.  
>Инструкцию по установке и использованию можно найти на [странице проекта](https://github.com/kawaii-flesh/KipTool)

## Обновление от 15.08.2024 - 4IFIR 2.4 Gamechanger
1.  Добавлена автоподстройка чатоты обновления экраная в соответствии с текущим FPS (Аналог VRR)
> **4IFIR Gamechanger > Edit app Profile**/**Temporary overrides**/**Global profile > LCD Freq Governor**
2.  В **4IFIR Gamechanger > Miscellaneous** добавлен пункт - NVIDIA PRISM 2 (Hardware Accelerated Display ECO feature)
3.  Переработаны режимы памяти для **Edit app Profile**/**Temporary overrides**/**Global profile**
>Настроив профиль 4ifir Optimised S (Wizard), автоматически будет настроен и 4ifir Optimised режим (1333 или 1600 MHz).  
>Добавлен режим EMC - 4ifir Optimised E+ (1333 MHz)
4.  Перебаллансирован режим **RAM - EMC Ballance - eBamatic**  

## Обновление от 16.07.2024 
1.  Добавлены патчи для уменьшения задержки вывода звука через bluetooth
2.  Добавлены патчи исправляющие запуск некоторых игр
3.  **4ekate** - обновлен до версии  6.2.1 (теперь не должно быть проблем с SemiStock)
4.  **TegraExplorer** - обновлен до версии  4.2.0
5.  В "**AIO - сторонние загрузки**" обновлен архив **4ekate.zip** до актуальной версии (при его установке, активируется 4ekate - ST 2, не вызывая проблем со сном)

## Обновление от 01.07.2024    
1.  Скрыт пункт **4IFIR Miracle > Gamechanger** (Теперь он доступен 4IFIR Miracle > Miscellaneous открыть с помощью "Х")  
2.  Восстановлена работа Semi-stock на 18.1

## Обновление от 24.06.2024  

### В настройки разгона **Edit app Profile**/**Temporary overrides**/**Global profile** добавлены пункты:
1. LCD - установка частоты обновления экрана, т.е. теперь для каждого приложения можно установить индивидуально (Не работает на OLED)
2. RAM - Был добавлен новы профиль 4IFIR Optimised S
   >4IFIR Optimised E - Эко режим, желаемую частоту RAM можно установить в оверлее 4IFIR Miracle > Gamechanger
   >4IFIR Optimised - 2й режим, желаемую частоту RAM и вольтажи можно установить в оверлее 4IFIR Miracle > Gamechanger
   >4IFIR Optimised S - 3й режим, тут применяются ваши настройки из 4IFIR Wizard
   
### В оверлей **4IFIR Miracle > Gamechanger** добавлены пункты:  
1. Изменение частоты обновления экрана (Не работает на OLED)
2. Изменение частоты RAM в реальном времени для профилей 4IFIR Optimised E и 4IFIR Optimised
3. Изменение VDD2 и VDDQ в реальном времени для 4IFIR Optimised
4. Изменение GPUv Min и CPU min в реальном времени для 4IFIR Optimised
5. Изменение вольтажа SOC в реальном времени
