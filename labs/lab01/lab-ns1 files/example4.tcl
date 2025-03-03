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
set N 6
for {set i 0} {$i < $N} {incr i} {
set n($i) [$ns node]
}

$ns duplex-link $n(0) $n(1) 1Mb 10ms DropTail
$ns duplex-link $n(1) $n(2) 1Mb 10ms DropTail
$ns duplex-link $n(2) $n(3) 1Mb 10ms DropTail
$ns duplex-link $n(3) $n(4) 1Mb 10ms DropTail
$ns duplex-link $n(4) $n(0) 1Mb 10ms DropTail
$ns duplex-link $n(1) $n(5) 1Mb 10ms DropTail


# создание агента UDP и присоединение его к узлу n0
set tcp0 [new Agent/TCP/Newreno]
$ns attach-agent $n(0) $tcp0

set sink1 [new Agent/TCPSink/DelAck]
$ns attach-agent $n(5) $sink1
$ns connect $tcp0 $sink1

set ftp [new Application/FTP]
$ftp attach-agent $tcp0

$ns at 0.5 "$ftp start"
$ns rtmodel-at 1.0 down $n(0) $n(1)
$ns rtmodel-at 2.0 up $n(0) $n(1)
$ns at 4.5 "$ftp stop"

$ns at 5.0 "finish"
 # запуск 
$ns run
