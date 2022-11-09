# frozen_string_literal: true

require_relative 'salaries'
include Salaries

names = ['Alex', 'Bob', 'Sally', 'Helen', 'Helga', 'Alice', 'CJ'] # Change to input from kb
salaries = [100, 200, 350, 50, 65, 210, 300]

raw_data = {}
names.each_with_index do |value, index|
  raw_data[value] = salaries[index]
end

out = Salaries.info(raw_data)
puts "Наименьшее отклонение от средней з/п у #{out.values[0]}\n1-й по з/п: #{out.values[1].keys[-1]}"\
     "\n2-й по з/п: #{out.values[1].keys[-2]}\nБез наименьшей з/п: #{out['3']}"
