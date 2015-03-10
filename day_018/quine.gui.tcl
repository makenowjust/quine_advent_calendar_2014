set s [format [set s {set s [format [set s %c%s%c] 123 $s 125]
set c ""
set i -1
button .b -textvar c -command {set c [string range $s [incr i] $i]; if {$c == ""} {exit} else {puts -nonewline $c}}
pack .b
}] 123 $s 125]
set c ""
set i -1
button .b -textvar c -command {set c [string range $s [incr i] $i]; if {$c == ""} {exit} else {puts -nonewline $c}}
pack .b
