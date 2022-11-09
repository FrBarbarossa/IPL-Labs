# frozen_string_literal: true

# Get info about salaries
module Salaries
  def self.info(data)
    data = data.sort_by(&:last).to_h
    deviations = data.values.map { |x| (x - data.values.sum / data.size).abs }
    out = {}
    out['0'] = data.keys[deviations.index(deviations.min)]
    data.delete(data.keys[0])
    out['3'] = data
    out
  end
end
