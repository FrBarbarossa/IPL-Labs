# frozen_string_literal: true

# counting sum of series with targeted accuracy
module Series
  def self.check(inp_number)
    raise 'Your accuracy have to be at least 1' if inp_number <= 0
  end

  def self.count_series(accuracy)
    check(accuracy)
    prev = 1.0
    sum = 0.0
    ind = 1.0
    while (prev - sum).abs > accuracy
      prev = sum
      sum += 1.0 / (ind * (ind + 1))
      ind += 1.0
    end
    [sum, ind]
  end
end
