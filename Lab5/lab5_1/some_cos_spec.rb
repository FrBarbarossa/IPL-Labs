require_relative 'some_cos'
require 'faker'

RSpec.describe SomeCos do
    describe '#calculate' do
        context 'when parameter is string' do
            let(:first) {Faker::String.random}
            let(:second) {10}
            it 'raises error' do
                expect{described_class.calculate(first, second)}.to raise_error
            end
        end

        context 'when everything is correct' do
            let(:first){rand(10)}
            let(:second){rand(10)}
            it 'works correct' do
                expect(described_class.calculate(first, second)).to be_kind_of(Float)
            end
        end

        # context 'when parametr is valid array' do
        #     let(:source_array) {
        #         rand(100)
        #     }
        #     it 'returns sorted array' do
        #         expect(described_class.sort_by_length(['aaa', 'bb', 'c'])).to eq(['c', 'bb', 'aaa']) # HARDCORE VARIANT
        #         expect(described_class.sort_by_length(source_array)).to eq(['c', 'bb', 'aaa']) # HARDCORE VARIANT
        #     end
        # end
        

        # context 'when user authorized' do
        # end
        # contet 'when user not authed' do
        # end
    end
end
