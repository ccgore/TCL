#!/usr/bin/tclsh

puts "Enter a number:"

set n [gets stdin]

set sum 0
for {set i 0} {$i <= $n} {incr i} {
	set sum [expr $sum + $i]
}

puts $sum
