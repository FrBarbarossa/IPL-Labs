# frozen_string_literal: true

require_relative 'circle'

RSpec.describe Circle do
  describe '#initialize' do
    context 'when generate circle' do
      let(:circle) { Circle.new(1, 2, 3) }
      let(:point) { Point.new(25, 35) }
      it 'creates Point class' do
        expect(circle.class).to eq(Circle)
      end
      it 'depends on Point class and Circle class' do
        expect(circle.is_a?(Point)).to eq(true) # экзмепляр Circle являнтся потомком Point true
        expect(circle.is_a?(Point)).to eq(true) # экзмепляр Circle являнтся потомком Point true
        expect(circle.instance_of?(Point)) # Строгое соответствие false
      end
      it 'Point is not a Circle' do
        expect(point.is_a?(Circle)).to eq(false)
      end
    end
    context 'when generated, coordinates are readable' do
      let(:circle) { Circle.new(100, 200, 2) }
      it 'gives back values of x and y' do
        expect(circle.x).to eq(100)
        expect(circle.y).to eq(200)
        expect(circle.radius).to eq(2)
      end
    end
  end
end
