# frozen_string_literal: true

require_relative 'file_writer'

RSpec.describe FileWriter do
  describe '#reverse' do
    context 'when numbers given' do
      let(:input1) { 'abc23Da' }
      let(:input2) { 'a32bcD1' }
      it 'writes correctly to F.txt' do
        described_class.reverse(input1)
        expect(File.open('lab7_1/F.txt').gets).to eq('abc23Da')
      end
      it 'converts all excepting numbers' do
        described_class.reverse(input2)
        expect(File.open('lab7_1/G.txt').gets).to eq('A32BCd1')
      end
    end
  end
end
