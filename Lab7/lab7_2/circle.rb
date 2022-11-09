# frozen_string_literal: true

require_relative 'point'

# Describes circle with center-point and radius
class Circle < Point
  attr_reader :radius

  def print
    puts 'Координаты центра:'
    super()
    puts "Радиус: #{@radius}"
  end

  def initialize(x_center, y_center, rad)
    super(x_center, y_center)
    @radius = rad
  end
end
