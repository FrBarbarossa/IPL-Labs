require_relative 'salaries'

RSpec.describe Salaries do
    describe '#info' do
        context 'when parameter is string' do
             let(:source){
                {"Alex"=>"abra", "Henry"=>30}
            }
                it 'raises error' do
                    expect{Salaries.info(source)}.to raise_error
                end
        end
        
        context 'when massive is empty' do
            let(:source){{}}
            it 'returns empty' do
              expect{described_class.info(source)}.to raise_error
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
