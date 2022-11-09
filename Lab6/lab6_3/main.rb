# frozen_string_literal: true

require_relative 'calculate_surface'
include CalculateSurface
include Math

points = [[0, 0], [Math::PI / 6, 0.5], [PI / 3, 0.5], [PI, 0], [2 * PI, 0], [PI / (6**0.5), 0.5], [0.75 * PI, 1 / (2**0.5)],
          [0, 1], [1, 1]]

func = ->(i) { Math.cos(i) }

points.each do |point|
  puts "Точка с координатами X: #{point[0]} Y: #{point[1]} удовлетворяет y=cos(x): #{CalculateSurface.neibr(point[0], point[1], func)}"
  puts "Точка с координатами X: #{point[0]} Y: #{point[1]} удовлетворяет y=sin(x^2): #{CalculateSurface.neibr(point[0], point[1]) { |i| Math.sin(i**2) }}"
end
