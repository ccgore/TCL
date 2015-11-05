#!/usr/bin/tclsh

###########################################
#gets command accepts input from keyboard.
puts "Enter your organization:"

set company [gets stdin]

puts "Your Organization : $company"
###########################################
#How to obtain different data types from keyboard.

puts "Enter your age and country:"

set data [gets stdin]

scan $data "%d %s" age country

puts "You are $age year(s) old"

puts "You are from $country"
###########################################
#How to work with arguments.
##set m1 [expr [lindex $argv 0]]
##set m2 [expr [lindex $argv 1]]
#expr is typically required to evaluate something, for example evaluate an addition expression.
set m1 [lindex $argv 0]
set m2 [lindex $argv 1]

puts "$m1"
puts "$m2"
