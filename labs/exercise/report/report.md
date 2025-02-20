---
## Front matter
title: "Упражнение"
subtitle: "Имитационное моделирование"
author: "Александрова Ульяна Вадимовна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является ознакомление с базовыми инструментами моделирования в sci-lab и xcos.

# Задание

Постройте с помощью xcos фигуры Лиссажу со следующими параметрами:

А) A=B=1, a=2, b=2, delta=0; pi/4; pi/2; 3 pi/4; pi;  
Б) A=B=1, a=2, b=4, delta=0; pi/4; pi/2; 3 pi/4; pi;  
В) A=B=1, a=2, b=6, delta=0; pi/4; pi/2; 3 pi/4; pi;  
Г) A=B=1, a=2, b=3, delta=0; pi/4; pi/2; 3 pi/4; pi;  

# Теоретическое введение

Scilab — система компьютерной математики, предназначенная для решения вычислительных задач.

Программа xcos является приложением к пакету Scilab. Для вызова окна xcos необходимо в меню основного окна Scilab выбрать Инструменты, Визуальное моделирование xcos.

При моделировании с использованием xcos реализуется принцип визуального программирования, в соответствии с которым пользователь на экране из палитры блоков создаёт модель и осуществляет расчёты.

- CLOCK_c — запуск часов модельного времени;
- GENSIN_f — блок генератора синусоидального сигнала;
- CANIMXY — анимированное регистрирующее устройство для построения графика типа y = f(x);
- TEXT_f — задаёт текст примечаний.

# Выполнение лабораторной работы

График для примера (рис. [-@fig:001]):

![A=B=1, a=3, b=2, delta=pi/2. Фигура Лиссажу](image/1.png){#fig:001 width=70%}

Графики для пункта А (рис. [-@fig:002]) (рис. [-@fig:003]) (рис. [-@fig:004]) (рис. [-@fig:005]):

![delta = 0. Прямая](image/2.png){#fig:002 width=70%}

![delta = pi/4. Эллиипс под углом 45 градусов](image/3.png){#fig:003 width=70%}

![delta = pi/2. Эллипс](image/4.png){#fig:004 width=70%}

![delta = 3pi/4. Эллипс под углом -45 градусов](image/5.png){#fig:005 width=70%}

Графики для пункта Б (рис. [-@fig:006]) (рис. [-@fig:007]) (рис. [-@fig:008]) (рис. [-@fig:009]):

![delta = pi/4. Парабола](image/6.png){#fig:006 width=70%}

![delta = pi/2. Лемниската Бернулли](image/7.png){#fig:007 width=70%}

![delta = 3pi/4. Перевернутая парабола](image/8.png){#fig:008 width=70%}

![delta = 3pi/4. Лемниската Бернулли](image/9.png){#fig:009 width=70%}

Графики для пункта В (рис. [-@fig:010]) (рис. [-@fig:011]) (рис. [-@fig:012]) (рис. [-@fig:013]) (рис. [-@fig:014]):

![delta = pi/4. Кривая](image/10.png){#fig:010 width=70%}

![delta = 0. Синусоида](image/11.png){#fig:011 width=70%}

![delta = pi/2. Прямая](image/12.png){#fig:012 width=70%}

![delta = 3pi/4. Прямая](image/13.png){#fig:013 width=70%}

![delta = pi. Синусоида](image/14.png){#fig:014 width=70%}

Графики для пункта 7 (рис. [-@fig:015]) (рис. [-@fig:016]) (рис. [-@fig:017]) (рис. [-@fig:018]) (рис. [-@fig:019]):

![delta = pi/4](image/15.png){#fig:015 width=70%}

![delta = 0](image/16.png){#fig:016 width=70%}

![delta = pi/2](image/17.png){#fig:017 width=70%}

![delta = 3pi/4](image/18.png){#fig:018 width=70%}

![delta = pi](image/19.png){#fig:019 width=70%}

# Выводы

Я научилась моделировать кривые Лиссажу с разными параметрами.
