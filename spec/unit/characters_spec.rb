require 'characters'

describe Characters do

  subject(:characters) { described_class.new }

  context 'when generated' do
    it 'raise_error when not type are specified' do
      expect{ characters.generate(false,false,false,false) }.to raise_error(ArgumentError)
    end

    it 'takes lowercase' do
      expect(characters.generate(false, true, false, false)).to include("a")
    end

    it 'takes uppercase' do
      expect(characters.generate(true, false, false, false)).to include("A")
    end

    it 'takes number' do
      expect(characters.generate(false, false, true, false)).to include("1")
    end

    it 'takes number' do
      expect(characters.generate(false, false, false, true)).to include("~")
    end
  end
end
