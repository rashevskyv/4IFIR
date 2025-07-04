# Гайд 4IFIR WIZARD (Undervolt)

1. [CPU](#CPU)  
1. [GPU](#GPU)  


***

## Советы перед настройкой
* Используйте EMUNAND
* Сделайте бекап сохранений 
* Установите игры для проверки стабильности настроек
* Текущие параметры, установленные в 4IFIR WIZARD, хранятся в файле atmosphere\kips\loader.kip
* Если после изменения какого-то из параметров перестала включаться консоль -  используйте KipTool для отката изменений.
Инструкцию по установке и использованию можно найти на [странице проекта](https://github.com/kawaii-flesh/KipTool)
* Если консоль не запускается после настройки в **4IFIR Wizard**, можно заменить файл `atmosphere/kips/loader.kip` на бэкап вашего предыдущего кипа, *не забудьте переименовать файл бэкапа в `loader.kip`*. Бэкапы кипов находятся в папке `atmosphere/kips/.bak` (включите невидимые папки в проводнике). Если бэкапов нет, можно достать стандартный `loader.kip` с вашей версии 4IFIR в папке `atmosphere/kips/loader.kip`.  
* Следует установить HB Menu как приложение (находится в папке games, в корне карты памяти, или [.nsp файл по ссылке](https://t.me/kf4fr/48074/547847)). Далее все манипуляции и тесты следует проводить именно в нем.  
>**Запускать с жатой кнопкой **R**. Дождаться пока загрузится HB Menu. Отпусть кнопку **R****
* Для проверки параметров на стабильность, сначала запускаем - MicroMemBench. Если все ОК, то можно переходить к тестам в игре, для этого хорошо подойдет Red Dead Redemption, игра хорошо нагружает консоль.
Для большей нагрузки, можно перевести консоль в docked mode с помощью ReversNX. Для каждого теста будет достаточно 15-20 минут игры.
***

## CPU
>Все пункты в данном разделе, тестируйте с включенным профилем EMC - 4IFIR optimised S.   
>**Во время тестов Governor CPU - должен быть отключен**

Начать рекоммендую с настроек CPU, так как CPU не зависит от RAM и GPU. Поэтому даже если вы в будующем захотите сделать себе новый кип (более экономичный или более производительный), то раздел CPU вам перенастраивать не придется.    
Если какой то из параметров будет "перекручен", то консоль скорее всего просто зависнет после лого атмосферы. 
Поэтому загружаемся в  **Hekate > payload > KipTool > KIP Wizard** и возвращаем параметр в предыдущее значение  
***
**Переходим в 4advanced - CPU**
* CPU Minimal Voltage – выбор нижнего порога потребления процессора.     
*(Чем ниже напряжение, тем меньше потребление)* 
>1. Выставляем значение - 600мВ 
>2. Перезагружаем систему
>3. Проводим тесты - достаточно 5 минут, чтобы проблемы проявились.  
>*Тесты проводим в играх, выставляя **минимальную** частоту через   4IFIR Houdini -> Temporary overrides (после установки разгона в этом пункте, он будет работать до перезагрузки консоли)* 
>4. Если все хорошо, опускаем значение  вольтажа еще ниже и так далее, пока система работает.     
>5. Фиксируем последнее стабильное значение и оставляем его.
* CPU Maximum Voltage – выбор верхнего порога потребления процессора.  
*(Чем ниже напряжение, тем меньше потребление)* 
>1. Выставляем значение - 1150мВ 
>2. Перезагружаем систему
>3. Перезагружаем систему и проводим тесты - достаточно 5 минут, чтобы проблемы проявились.  
>*Тесты проводим в играх, выставляя **максимальную** частоту через   4IFIR Houdini -> Temporary overrides (после установки разгона в этом пункте, он будет работать до перезагрузки консоли)* 
>4. Если все хорошо, опускаем значение  вольтажа еще ниже и так далее, пока система работает.     
>5. Фиксируем последнее стабильное значение и оставляем его.    
* Low Mhz Undervolt – уровни андервольта для частот процессора ниже <=15хх Mhz.  
*(Чем выше **Level**, тем ниже потребление на частотах до 15ххMHz)* 
>0. По умолчанию стоит значение - **0** 
>2. Выставляем его на шаг выше **(Level 1)**. 
>3. Перезагружаем систему и проводим тесты.  
>*Тесты проводим в играх, выставляя частоту процессора ниже <=15хх Mhz. через   4IFIR Houdini -> Temporary overrides* 
>4. Если все хорошо, поднимаем **Level** еще выше и так далее, пока система работает.     
>5. Фиксируем последнее стабильное значение и оставляем его. 
  
* High Mhz Undervolt – уровни андервольта для частот процессора выше >15хх Mhz.  
*(Чем выше **Level**, тем ниже потребление на частотах выше 15ххMHz)* 
>0. По умолчанию стоит значение - **0** 
>2. Выставляем его на шаг выше **(Level 1)**. 
>3. Перезагружаем систему и проводим тесты.  
>*Тесты проводим в играх, выставляя частоту процессора ниже <=15хх Mhz. через   4IFIR Houdini -> Temporary overrides* 
>4. Если все хорошо, поднимаем **Level** еще выше и так далее, пока система работает.     
>5. Фиксируем последнее стабильное значение и оставляем его.

* dCPUv - корректировка напряжений в диапазоне частот от 12хх до 18хх MHz  
>**Действовать нужно с осторожностью и на свой страх и риск. Хотя катастрофических последствий быть не должно, ошибки в работе игры и операционной системы возможны.**
  **Перед редактированием рекомендуется сделать бекап конфигурации, чтобы не пересоздавать ее заново. Откатить изменения в конфигураторе не получится.**
>1. Выставляем значение - 780мВ 
>2. Перезагружаем систему
>3. Проводим тесты - достаточно 5 минут, чтобы проблемы проявились.  
>*Тесты проводим в играх, выставляя частоту из диапазона **12хх-18ххMHz**  через   4IFIR Houdini -> Temporary overrides (после установки разгона в этом пункте, он будет работать до перезагрузки консоли)* 
>4. Если все хорошо, опускаем значение  вольтажа еще ниже и так далее, пока система работает.     
>5. Фиксируем последнее стабильное значение и оставляем его.
  Обязательно протестируйте работу с разгоном оперативной памяти и отключенным CPU Freq Governor в диапазоне частот 12хх-18ххMHz в CPU-интенсивных играх!
* CPU Boost Clock – выбор частоты до которой будет разгонятся игра на загрузочных экранах.  
>Можно выставить максимальное значение, но eBamatic - стабильнее 

* Speed Shift - понижение напряжения (потребления) вторичных компонентов консоли.   
*(Чем выше значение, тем ниже потребление)*  
>1. Выставляем значение - ECO Stage 1 
>2. Перезагружаем систему
>3. Проводим тесты - достаточно 5 минут, чтобы проблемы проявились.  
>Тесты проводим в играх, выставляя частоту **4IFIR Optimised**  через   4IFIR Houdini -> Temporary overrides (после установки разгона в этом пункте, он будет работать до перезагрузки консоли)* 
>4. Если все хорошо, поднимаем значение **ECO Stage** вольтажа еще выше и так далее, пока система работает.     
>5. Фиксируем последнее стабильное значение и оставляем его.
***
## GPU
>Все пункты в данном разделе, тестируйте с включенным профилем EMC - 4IFIR optimised S.
>**Во время тестов Governor GPU - должен быть отключен**
  
   
* Тесты можно проводить только в играх, так как MemBench не задействует GPU
* Принцип работы волтажей GPU:  
* GPUv Min - зависит от текущей частоты RAM, но так как теперь этот параметр адаптивный, то заморачиваться на этом не стоит. (для справки)  
* На вольтажи GPU влияют 2 параметра - GPUv Min (1й приоритет) и Gpu Eco Mode (2й приоритет);    
* От самой минимальной частоты GPU - до *xxx*MHz (это частота которую предстоит вычислить опытным путем) используются вольтажи GPUv Min    
* На всех остальных частотах GPU используются вольтажи из таблицы Gpu Eco Mode    
* Ошибки связаные с "перекручеными" настройками GPU, обычно выглядят в виде артефактов в играх(нарушение целостности текстур, непонятные сверкающие точки, изменение текстур). Так же могут сопровождаться оранжевым экраном.
***
**Подготовка к настройке GPUv Mode (GPU Vmin)**
*Поиск максимальной частоты, при минимальном напряжении*
>1. Запускаем GPU-интенсивную игру (RDR, No Man's Sky, Hogwarts Legacy).  
>2.  В игре и должны узнать, до какой частоты работает наш GPU при минимальном напряжении. Перед этим, нужно отключить GPU Freq Governor: 4IFIR Houdini -> Edit app Profile -> GPU Freq Governor -> Off;  
>3. Устанавливаем частоту GPU: 4IFIR Houdini -> Temporary overrides -> GPU -> 460MHz;  
>4. Переходим в 4IFIR Houdini -> Miscellaneous; Спускаемся в самый низ и фиксируем значение **GPU volt: xxx**, где **xxx** - ваше текущее напряжение. (**Данный показатель меняется в зависимости от частоты RAM**)    
>5. Возвращаемся в Temporary overrides и увеличиваем частоту GPU на один шаг.  
>6. Снова проверяем напряжение GPU в Miscellaneous, повторяя эту процедуру до тех пор, пока **GPU volt** не изменится.  
>7. После этого уменьшаем частоту GPU на один шаг от предельного значения.
>  
>_Пример (случайные значения):  
>частота гпу 72х - 590мв  
>частота гпу 768 - 590мв  
>частота гпу 8хх - 600мв  
>Проводим тесты на 72х._
>  
>Таким образом, мы определили максимальную частоту при минимальном напряжении.  

**Переходим в раздел SmartMode-QuickTune-GPU**

* GPUv Mode – уровни самого минимального значения потребления видеокарты.   
*(Чем выше Stage, тем ниже напряжение и меньше потребление)*   
>0.  По умолчанию стоит значение - **ST 1** 
>1. Повышаем значение на шаг и перезагружаемся. 
>2. Запускаем GPU-интенсивные игры (RDR, No Man's Sky, Hogwarts Legacy).  
>3. Для тестов, нужно отключить GPU Freq Governor: 4IFIR Houdini -> Edit app Profile -> GPU Freq Governor -> Off;  
>4. Устанавливаем частоту GPU: 4IFIR Houdini -> Temporary overrides -> GPU -> xxx MHz (Это максимальная частота, при минимальном напряжении, найденная в пункте "Подготовка");  
>5. Проверяем стабильность на этой частоте, обязательно с включенным разгоном RAM. 5-10 минут игры в нескольких играх будет достаточно.  
>6. Если на каком-либо этапе повышения частоты или теста в игре происходит сбой или зависание, снижаем GPUv. Если нет - повышаем и тестируем дальше.  
* Gpu Eco Mode – выбор уровня андервольта на всей сетке частот видеокарты (чем выше тем агрессивнее андервольт).
>Принцип настройки и тестирования - такой же, как в **GPUv Mode**, Но тесты нужно проводить на частотах GPU выше **xxx MHz** (максимальная частота, при минимальном напряжении, найденная в пункте "Подготовка");

### Дополнительные корректировки GPUv 
Переходим 4advanced - RAM - MICRO-ENHANCE LOGIC  
-   pMeh 21  _gVMINDick_  - Более точная корректировка GPU vMin для EMC - 4IFIR Optimised S   
(Чем выше значение, тем ниже минимальный вольтаж)
>1. Повышаем значение на шаг и перезагружаемся. 
>2. Запускаем GPU-интенсивные игры (RDR, No Man's Sky, Hogwarts Legacy).  
>3. Для тестов, нужно отключить GPU Freq Governor: 4IFIR Houdini -> Edit app Profile -> GPU Freq Governor -> Off;
>4. Устанавливаем частоту RAM: 4IFIR Houdini -> Temporary overrides -> EMC -> 4IFIR Optimised S  
>4. Устанавливаем частоту GPU: 4IFIR Houdini -> Temporary overrides -> GPU -> xxx MHz (Это максимальная частота, при минимальном напряжении, найденная в пункте "Подготовка");  
>5. Проверяем стабильность на этой частоте, обязательно с включенным разгоном RAM. 5-10 минут игры в нескольких играх будет достаточно.  
>6. Если на каком-либо этапе повышения частоты или теста в игре происходит сбой или зависание, снижаем GPUv. Если нет - повышаем и тестируем дальше.
>Следить за изменением вольтажа GPU, можно в оверлее **InfoNX**  
-   pMeh 19  _vMINetune_  - Более точная корректировка GPU vMin для EMC - 4IFIR Optimised  
(Чем выше значение, тем ниже минимальный вольтаж)
>Принцип настройки и тестирования - точно такой же, как и для pMeh 21. Только тесты следует проводить на частоте RAM **EMC - 4IFIR Optimised**

### Ручная настройка таблицы GPU Undervolt (Gpu Eco Mode)  
Существует возможность более тонкой настройки вольтажей, для каждой из частот GPU.   
Важно не забывать, что вольтажи из **GPU Undervolt (Gpu Eco Mode)** будут применяться, только к частотам, которые выше **xxx MHz (Это максимальная частота, при минимальном напряжении, найденная в пункте "Подготовка")**  
  
>1. Переходим 4advanced - GPU - GPU Undervolt Mode - Custom Table - Reboot (Это переключит нас на использование ручной таблицы вольтажей)
> 2. 4advanced - GPU - GPU custom table
> 3. Выбираем частоту GPU
> 4. Понижаем значение мВ
> 4. Перезагружаемся
> 2. Запускаем GPU-интенсивные игры (RDR, No Man's Sky, Hogwarts Legacy).  
>3. Для тестов, нужно отключить GPU Freq Governor: 4IFIR Houdini -> Edit app Profile -> GPU Freq Governor -> Off;
>4. Устанавливаем частоту GPU: 4IFIR Houdini -> Temporary overrides -> GPU -> та частота, для которой сейчас настраивается вольтаж.  
>5. Проверяем стабильность на этой частоте, обязательно с включенным разгоном RAM. 5-10 минут игры в нескольких играх будет достаточно.  
>10. Повторяем эти действия, для всех желаемых частот 
>Следить за изменением вольтажа GPU, можно в оверлее **InfoNX**  
  
***
