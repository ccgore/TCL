#!/usr/bin/tclsh
########################################
#This is solution to first problem on project euler.
########################################
set sum 0
for {set i 0} {$i<1000} {incr i} {
	if {[expr [expr $i%3==0] || [expr $i%5==0]]} {set sum [expr $sum + $i]}
}

puts $sum


