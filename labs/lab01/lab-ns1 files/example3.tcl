# создание объекта Simulator
set ns [new Simulator]

$ns rtproto DV

# открытие на запись файла out.nam для визуализатора nam
set nf [open out.nam w]

 # все результаты моделирования будут записаны в переменную nf
$ns namtrace-all $nf

# открытие на запись файла трассировки out.tr
 # для регистрации всех событий
set f [open out.tr w]
 # все регистрируемые события будут записаны в переменную f
$ns trace-all $f

# процедура finish закрывает файлы трассировки
# и запускает визуализатор nam
proc finish {} {
	global ns f nf
	# описание глобальных переменных
	$ns flush-trace
	close $f
	close $nf
	 # прекращение трассировки
	 # закрытие файлов трассировки
	 # закрытие файлов трассировки nam

	 # запуск nam в фоновом режиме
	exec nam out.nam &
	exit 0
}

# at-событие для планировщика событий, которое запускает
 # процедуру finish через 5 с после начала моделирования




 # создание 2-х узлов:
set N 7
for {set i 0} {$i < $N} {incr i} {
set n($i) [$ns node]
}

for {set i 0} {$i < $N} {incr i} {
 $ns duplex-link $n($i) $n([expr ($i+1)%$N]) 1Mb 10ms DropTail
 }


# создание агента UDP и присоединение его к узлу n0
set udp0 [new Agent/UDP]
$ns attach-agent $n(0) $udp0

 # создание источника трафика CBR (constant bit rate)
set cbr0 [new Agent/CBR]
$cbr0 set packetSize_ 500
$cbr0 set interval_ 0.005
$ns attach-agent $n(0) $cbr0

# Создание агента-приёмника и присоединение его к узлу n(1)
set null0 [new Agent/Null]
$ns attach-agent $n(3) $null0


 # Соединение агентов между собой
$ns connect $cbr0 $null0


$ns at 0.5 "$cbr0 start"
$ns rtmodel-at 1.0 down $n(1) $n(2)
$ns rtmodel-at 2.0 up $n(1) $n(2)
$ns at 4.5 "$cbr0 stop"

$ns at 5.0 "finish"
 # запуск 
$ns run
