# frozen_string_literal: true

# Describe point in  cartesian coordinates
class Point
  attr_reader :x, :y

  def print
    puts "X: #{@x}", "Y: #{@y}"
  end

  def initialize(axis_x, axis_y)
    @x = axis_x
    @y = axis_y
  end
end
