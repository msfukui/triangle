#!/usr/bin/env ruby

require_relative 'lib/triangle'

x, y, z = ARGV.join.split(",",3).map{|s| Integer s}

puts Triangle.new(x,y,z).print
