# frozen_string_literal: true

require_relative 'some_cos'
include SomeCos

a = Integer(gets.chomp)
b = Integer(gets.chomp)
puts SomeCos.calculate(a, b)
