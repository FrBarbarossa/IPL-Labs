# frozen_string_literal: true

require_relative 'point'

RSpec.describe Point do
  describe '#initialize' do
    context 'when generate point' do
      let(:point) { Point.new(1, 2) }
      it 'creates Point class' do
        expect(point.class).to eq(Point)
      end
    end
    context 'when generated, coordinates are readable' do
      let(:point) { Point.new(100, 200) }
      it 'gives back values of x and y' do
        expect(point.x).to eq(100)
        expect(point.y).to eq(200)
      end
    end
  end
end
