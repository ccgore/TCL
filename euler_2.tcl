#!/usr/bin/tclsh

####################################
#This is solution to 2nd problem on project euler.
####################################
set i 0
set j 1
set f 0
set sum 0
for {set k 0} {$k<4000001} {incr k} {
	set f [expr $i + $j]
	set i $j
	set j $f
	if {[expr $f%2 == 0]} {set sum [expr $sum + $f]}
}

puts $sum

