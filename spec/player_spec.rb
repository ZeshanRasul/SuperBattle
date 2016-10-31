require 'player'

describe Player do
  subject(:pikachu) { Player.new 'Pikachu' }
  subject(:squirtle) { Player.new 'Squirtle' }

  describe '#name' do
    it "it returns it's name" do
      expect(pikachu.name).to eq 'Pikachu'
    end
  end

  describe '#hitpoints' do
    it "it returns it's hp" do
      expect(pikachu.hp).to eq 20
    end
  end

  describe '#attack' do
    it 'damages the opponent' do
      expect(squirtle).to receive(:take_damage)
      pikachu.attack(squirtle)
    end
  end

  describe '#take damage' do
    it 'reduces the players hitpoints' do
        expect {squirtle.take_damage}.to change {squirtle.hp}.by(-1)
    end
  end
end
