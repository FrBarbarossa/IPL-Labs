require_relative 'odds_count'

RSpec.describe OddsCount do
    describe '#magic' do
        context 'when parametr is string' do
            let(:input) {[1,'asdas']}
            it 'raises error' do
                expect{described_class.magic(input)}.to raise_error
            end
        end

        context 'when last no odds' do
            let(:input){10.times.map{Random.rand(11)}.map{|n| n+n%2}}
            it 'returns empty second' do
                expect(described_class.magic(input)[1]).to eq({})
            end
        end
    end
end
