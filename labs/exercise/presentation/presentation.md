---
## Front matter
lang: ru-RU
title: Упражнение
subtitle: Имитационное моделирование
author:
  - Александрова УВ
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 23 февраля 2025

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
---

# Информация

## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

  * Александрова Ульяна
  * студентка 3го курса
  * Факультет физико-математических и естественных наук
  * Российский университет дружбы народов
  * [1132226444@rudn.ru](mailto:1132226444@rudn.ru)

:::
::: {.column width="30%"}

![](./image/yana.jpg)

:::
::::::::::::::


# Цель работы

##

Целью работы является ознакомление с базовыми инструментами моделирования в sci-lab и xcos.

# Задание

##

Постройте с помощью xcos фигуры Лиссажу со следующими параметрами:

А) A=B=1, a=2, b=2, delta=0; pi/4; pi/2; 3 pi/4; pi;  
Б) A=B=1, a=2, b=4, delta=0; pi/4; pi/2; 3 pi/4; pi;  
В) A=B=1, a=2, b=6, delta=0; pi/4; pi/2; 3 pi/4; pi;  
Г) A=B=1, a=2, b=3, delta=0; pi/4; pi/2; 3 pi/4; pi;  

# Теоретическое введение

Scilab — система компьютерной математики, предназначенная для решения вычислительных задач.

Программа xcos является приложением к пакету Scilab. Для вызова окна xcos необходимо в меню основного окна Scilab выбрать Инструменты, Визуальное моделирование xcos.

- CLOCK_c — запуск часов модельного времени;
- GENSIN_f — блок генератора синусоидального сигнала;
- CANIMXY — анимированное регистрирующее устройство для построения графика типа y = f(x);
- TEXT_f — задаёт текст примечаний.

# Выполнение лабораторной работы

## Пример

![A=B=1, a=3, b=2, delta=pi/2. Фигура Лиссажу](image/1.png){#fig:001 width=70%}

# Графики для пункта А 

## delta = 0

![delta = 0. Прямая](image/2.png){#fig:002 width=70%}

## delta = pi/4

![delta = pi/4. Эллиипс под углом 45 градусов](image/3.png){#fig:003 width=70%}

## delta = pi/2

![delta = pi/2. Эллипс](image/4.png){#fig:004 width=70%}

## delta = 3pi/4

![delta = 3pi/4. Эллипс под углом -45 градусов](image/5.png){#fig:005 width=70%}

## delta = pi/4

![delta = pi/4. Парабола](image/6.png){#fig:006 width=70%}

## delta = pi/2

![delta = pi/2. Лемниската Бернулли](image/7.png){#fig:007 width=70%}

## delta = 3pi/4

![delta = 3pi/4. Перевернутая парабола](image/8.png){#fig:008 width=70%}

## delta = pi

![delta = 3pi/4. Лемниската Бернулли](image/9.png){#fig:009 width=70%}

# Графики для пункта Б

## delta = pi/4

![delta = pi/4. Кривая](image/10.png){#fig:010 width=70%}

## delta = 0

![delta = 0. Синусоида](image/11.png){#fig:011 width=70%}

## delta = pi/2

![delta = pi/2. Прямая](image/12.png){#fig:012 width=70%}

## delta = 3pi/4

![delta = 3pi/4. Прямая](image/13.png){#fig:013 width=70%}

## delta = pi

![delta = pi. Синусоида](image/14.png){#fig:014 width=70%}

# Графики для пункта Г

## delta = pi/4

![delta = pi/4](image/15.png){#fig:015 width=70%}

## delta = 0

![delta = 0](image/16.png){#fig:016 width=70%}

## delta = pi/2

![delta = pi/2](image/17.png){#fig:017 width=70%}

## delta = 3pi/4

![delta = 3pi/4](image/18.png){#fig:018 width=70%}

## delta = pi

![delta = pi](image/19.png){#fig:019 width=70%}

# Выводы

##

Я научилась моделировать кривые Лиссажу с разными параметрами.
