require 'player'

describe Player do
  subject(:pikachu) { Player.new 'Pikachu'}

  describe '#name' do
    it "it returns it's name" do
      expect(pikachu.name).to eq 'Pikachu'
    end
  end
end
