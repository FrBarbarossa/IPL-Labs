require_relative 'series'

RSpec.describe Series do
    describe '#count_series' do
        context 'when parametr is 0 or less' do
            let(:input1){-1}
            let(:input2){0}
            it 'raises error' do
                expect{described_class.new.find{ |prev, sum| (prev - sum).abs < 10**-5 }}.to raise_error
            end
        end
    end
end