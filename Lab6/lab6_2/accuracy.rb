# frozen_string_literal: true

# counting sum of series with targeted accuracy using Enumarabl
class Accuracy
  include Enumerable
  def each
    prev = 1.0
    sum = 0.0
    ind = 1.0
    loop do
      yield prev, sum, ind
      prev = sum
      sum += 1.0 / (ind * (ind + 1))
      ind += 1.0
    end
  end
end
