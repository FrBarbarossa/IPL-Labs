# frozen_string_literal: true

require_relative 'series'
include Series

1.upto(10) do |i|
  result = Series.count_series(10**-i)
  puts "При точности #{i} знак(ов) после запятой значение = #{result[0]}, число итераций: #{result[1].to_int}"
end

# count_series().lazy.first().take_while(|sum|)

count_series_ruby_style = Enumerator.new{ |y|
  prev = 1.0
  sum = 0.0
  ind = 1.0
  loop{
    y << [sum, prev]
    prev = sum
    sum += 1/(ind * (ind + 1))
    ind += 1.0
  }
}
p count_series_ruby_style.lazy.select{|i| (i[1]-i[0]).abs<0.1}.first().to_a

# def self.count_series(accuracy)
  # check(accuracy)
  # prev = 1.0
  # sum = 0.0
  # ind = 1.0
  # while (prev - sum).abs > accuracy
    # prev = sum
    # sum += 1.0 / (ind * (ind + 1))
    # ind += 1.0
  # end
  # [sum, ind]
# end
# 