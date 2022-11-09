# frozen_string_literal: true

require_relative 'accuracy'

1.upto(10) do |i|
  result = Accuracy.new.find { |prev, sum| (prev - sum).abs < 10**-i }
  puts "При точности #{i} знак(ов) после запятой значение = #{result[1]}, число интераций: #{result[2].to_int}"
end
