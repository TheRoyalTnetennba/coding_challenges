#!/bin/ruby

arr = gets.strip
arr = arr.split(' ').map(&:to_i)
arr.reverse.each { |l| print "#{l} " }
