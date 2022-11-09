# frozen_string_literal: true

# Get info about salaries
module OddsCount
  def self.magic(input)
    out = [{}, {}]
    input.each_with_index do |val, index|
      if val.odd? then out[1][index] = val
      else
        out[0][index] = val end
    end
    out
  end
end
