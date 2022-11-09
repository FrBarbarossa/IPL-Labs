# frozen_string_literal: true

require_relative 'odds_count'
include OddsCount

input = []
puts 'Input untill you enter "stop" in console'
inp = gets.chomp
while inp != 'stop'
  input << Integer(inp)
  inp = gets.chomp
end

OddsCount.magic(input).each do |piece|
  piece.sort_by(&:last).each do |val|
    puts "#{val[0]}: #{val[1]}"
  end
end
