# frozen_string_literal: true

include Math

# Calc if (x, y) belongs to surface
module CalculateSurface
  def self.neibr(x, y, lmbd = '')
    block_given? ? (res = yield x) : (res = lmbd.call(x))
    y == res
  end
end
