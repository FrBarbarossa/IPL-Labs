1.upto(10) do |i|
  result = Series.count_series(10**-i)
  puts "При точности #{i} знак(ов) после запятой значение = #{result[0]}, число итераций: #{result[1].to_int}"
end