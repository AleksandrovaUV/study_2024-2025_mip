# создание объекта Simulator
set ns [new Simulator]

set N 5
for {set i 1} {$i < $N} {incr i} {
set n(s$i) [$ns node]
}

set n(r1) [$ns node]
set n(r2) [$ns node]

$ns duplex-link $n(s1) $n(r1) 10Mb 2ms DropTail
$ns duplex-link $n(s2) $n(r1) 10Mb 3ms DropTail
$ns duplex-link $n(r1) $n(r2) 1.5Mb 20ms RED
$ns queue-limit $n(r1) $n(r2) 25
$ns queue-limit $n(r2) $n(r1) 25
$ns duplex-link $n(s3) $n(r2) 10Mb 4ms DropTail
$ns duplex-link $n(s4) $n(r2) 10Mb 5ms DropTail


set tcp1 [$ns create-connection TCP/Vegas $n(s1) TCPSink $n(s3) 0]
$tcp1 set window_ 15
set tcp2 [$ns create-connection TCP/Reno $n(s2) TCPSink $n(s3) 1]
$tcp2 set window_ 15

set ftp1 [$tcp1 attach-source FTP]
set ftp2 [$tcp2 attach-source FTP]

# Мониторинг размера окна TCP:
set windowVsTime [open WindowVsTimeVegas w]
puts $windowVsTime "0.Color: Blue"
puts $windowVsTime \"window
set qmon [$ns monitor-queue $n(r1) $n(r2) [open qm.out w] 0.1];
[$ns link $n(r1) $n(r2)] queue-sample-timeout;

# Мониторинг очереди:
set redq [[$ns link $n(r1) $n(r2)] queue]
set tchan_ [open all.q w]
$redq trace curq_
$redq trace ave_
$redq attach $tchan_

$ns at 0.0 "$ftp1 start"
$ns at 1.1 "plotWindow $tcp1 $windowVsTime"
$ns at 3.0 "$ftp2 start"

$ns at 10.0 "finish"

# Формирование файла с данными о размере окна TCP:
proc plotWindow {tcpSource file} {
    global ns
    set time 0.01
    set now [$ns now]
    set cwnd [$tcpSource set cwnd_]
    puts $file "$now $cwnd"
    $ns at [expr $now+$time] "plotWindow $tcpSource $file"
}

# Процедура finish:
proc finish {} {
    global tchan_

    # подключение кода AWK:
    set awkCode {
        {
            if ($1 == "Q" && NF>2) {
                print $2, $3 >> "temp.q";
                set end $2
            }
            else if ($1 == "a" && NF>2)
            print $2, $3 >> "temp.a";
        }
    }

    set f [open temp.queue w]
    puts $f "TitleText: red"
    puts $f "Device: Postscript"

    if { [info exists tchan_] } {
        close $tchan_
    }
    exec rm -f temp.q temp.a
    exec touch temp.a temp.q
  
    exec touch all.q

  # выполнение кода AWK
    exec awk $awkCode all.q 
    puts $f \"main
    exec cat temp.q >@ $f
    puts $f \n\"average
    exec cat temp.a >@ $f
    close $f

    set tempQueueContent [exec cat temp.q]
    puts "Содержимое temp.q: $tempQueueContent"

    set windowVsTimeContent [exec cat WindowVsTimeVegas]
    puts "Содержимое WindowVsTimeVegas: $windowVsTimeContent"


    # Запуск xgraph с графиками окна TCP и очереди:
    exec xgraph -bb -tk -x time -t "TCPVegasCWND" -bg pink -lw 1 -x 'Time' WindowVsTimeVegas &
    exec xgraph -bb -tk -x time -y queue -bg pink -x 'Time' temp.queue &
    exit 0
}

 # запуск 
$ns run
