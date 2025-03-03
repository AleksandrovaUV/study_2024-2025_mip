---
## Front matter
lang: ru-RU
title: Лабораторная работа №2
subtitle: Имитационное моделирование
author:
  - Александрова УВ
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 19 февраля 2025

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

## Цель работы

Целью данной работы является исследование протокола TCP и алгоритма управления очередью RED.

# Выполнение лабораторной работы

## Пример

![График очереди](image/1.png){#fig:001 width=70%}

![График динамики размера окна TCP](image/2.png){#fig:002 width=70%}

## Упражнение. NewReno

![График очереди для NewReno](image/4.png){#fig:003 width=70%}

![График динамики размера окна TCP для NewReno](image/3.png){#fig:004 width=70%}

## Упражнение. Vegas

![График очереди для Vegas](image/5.png){#fig:005 width=70%}

![График динамики размера окна TCP для Vegas](image/6.png){#fig:006 width=70%}

# Выводы

Я исследовала алгоритмы управления очередью RED.
