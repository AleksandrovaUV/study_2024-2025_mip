---
## Front matter
title: "Лабораторная работа №7"
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

Целью данной работы является создание модели M | M | 1 | inf при помощи утилиты Sci-lab (xcos).

# Задание

Нашей задачей является построить модель в соответствии с матеодическим материалом.

# Теоретическое введение

Модель \( M | M | 1 | inf \) относится к теории массового обслуживания и описывает систему с одним обслуживающим устройством, где:

- **M**: Входящий поток заявок (поток Пуассона).
- **M**: Время обслуживания заявок (экспоненциальное распределение).
- **1**: Одно обслуживающее устройство.
- **inf**: Неограниченная длина очереди.

Эта модель используется для анализа систем, где заявки поступают случайным образом и обслуживаются по принципу "первым пришел — первым обслужен"

# Выполнение лабораторной работы

В константах задаем значения для наших коэффициентов $\lambda = 0.3, \, \mu = 0.35, z0 = 0.6$

Для начала составляю суперблок, который будет моделировать поступление заявок в систему (по пуассоновскому распределению с интенсивностью $\lambda$) (рис. [-@fig:001]).

![Суперблок на поступление заявок](image/1.png){#fig:001 width=70%}

Далее составляю суперблок, который будет обрабатывать заявки по экспонинцеальному закону с коэффициентом $\mu$  (рис. [-@fig:002]).

![Суперблок на обработку заявок](image/2.png){#fig:002 width=70%}

И в конце создаем модель, используя уже готовые суперблоки и последнюю нашу константу z (рис. [-@fig:003]).

![Готовая модель с графиками](image/3.png){#fig:003 width=70%}

На графике слева мы видим поступление (черн) и обработку (син) заявок во время x. На графике справа отображена динамика роста очереди. Можно заметить, что очередь не падает меньше 5 и начинается от точки 6 (которую мы задали как константу). Максимальный скачок наблюдается до y = 7.

# Выводы

Я посмтроила СМО модель в Sci-Lab.

