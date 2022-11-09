# frozen_string_literal: true

include Math

# Simple sample of math module
module SomeCos
  def self.calculate(first, second)
    (Math.sin(first) - second) / (second.abs + Math.cos(second**2))
  end
end
