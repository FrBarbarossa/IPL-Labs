# frozen_string_literal: true

# Creates new file F.txt with source text and create G.txt with case swaped letters
module FileWriter
  def self.reverse(text_f)
    File.write('lab7_1/F.txt', text_f)
    out = File.open('lab7_1/F.txt').readlines(chomp: true).map(&:swapcase)
    File.write('lab7_1/G.txt', out.join("\n"))
  end
end
