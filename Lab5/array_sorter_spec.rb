require_relative 'array_sorter'

RSpec.describe ArraySorter do
    describe '#sort_by_length' do
        context 'when parameter is nil' do
                it 'raises error' do
                    expect{described_class.sort_by_length(nil)}.to raise_error
                end
        end

        context 'when parametr is valid array' do
            let(:source_array) {
                rand(100)
            }
            it 'returns sorted array' do
                expect(described_class.sort_by_length(['aaa', 'bb', 'c'])).to eq(['c', 'bb', 'aaa']) # HARDCORE VARIANT
                expect(described_class.sort_by_length(source_array)).to eq(['c', 'bb', 'aaa']) # HARDCORE VARIANT
            end
        end
        

        # context 'when user authorized' do
        # end
        # contet 'when user not authed' do
        # end
    end
end
