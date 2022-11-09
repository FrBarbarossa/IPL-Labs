# frozen_string_literal: true

require_relative 'circle'
require_relative 'point'

a = Point.new(1, 2)
p a.y
a.print

circle = Circle.new(10, 20, 30)

p circle.x
p circle.radius
circle.print
