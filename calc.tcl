#!/usr/bin/tclsh

##Simple Calculator using tcl.
##Addition, Subtraction, Multiplication, Division.
##Detect Divide by Zero situation.

puts "Enter in the following format: op1 op2 operation"

set data [gets stdin]

scan $data "%f %f %s" op1 op2 oper

switch $oper {
	Add {set result [expr $op1 + $op2]; set sign "+"} 
	Sub {set result [expr $op1 - $op2]; set sign "-"} 
	Mul {set result [expr $op1 * $op2]; set sign "*"} 
	Div {
	if {$op2 == 0} { puts "Divide by Zero Error"; set sign "/"; set result "Infinity"} else {set result [expr $op1/$op2]; set sign "/"}} 
	default {puts "Please enter Add, Sub, Mul or Div"; set sign " "}
}
puts "$op1 $sign $op2 = $result"  

