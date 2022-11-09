require_relative 'calculate_surface'


RSpec.describe CalculateSurface do
    describe '#neibr' do
        context 'when parametrs are valid and func is cos' do
            let(:point1){[0, 0]}
            let(:point2){[0, 1]}
            let(:point3){[rand(1), rand(1)]}
            let(:func){->(i) { Math.cos(i) }}
            it 'wrong' do
                expect(described_class.neibr(point1[0], point1[1], func)).to eq(false)
            end
            it 'going good' do
                expect(described_class.neibr(point2[0], point2[1], func)).to eq(true)
            end
            it 'lmbd and block' do
                expect(described_class.neibr(point3[0], point3[1], func) == described_class.neibr(point3[0], point3[1]) { |i| Math.cos(i**2) }).to eq(true)
            end
        end
    end
end