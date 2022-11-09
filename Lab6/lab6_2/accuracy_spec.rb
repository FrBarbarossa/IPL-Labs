require_relative 'accuracy'

RSpec.describe Accuracy do
    describe '#each' do
        context 'when parametr is 0 or less' do
            let(:input1){-1}
            let(:input2){0}
            it 'raises error' do
                expect{described_class.each(input1)}.to raise_error
                expect{described_class.each(input2)}.to raise_error
            end
        end
    end
end