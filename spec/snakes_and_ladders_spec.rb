require 'snakes_and_ladders'

describe SnakesAndLadders do
  describe '#dice' do
    it 'allows player to roll a dice which returns a random number' do
      allow(subject).to receive(:rand).and_return(1)
      expect(subject.dice).to eq(1)
    end

    it 'allows player to roll a dice which returns a random number' do
      allow(subject).to receive(:rand).and_return(2)
      expect(subject.dice).to eq(2)
    end
  end

  describe '#move' do
    it 'allows player to roll 2 dice which returns score' do
      allow(subject).to receive(:dice).and_return(2)
      expect(subject.move).to eq(4)
    end

    it 'allows player to roll 2 dice which returns score' do
      allow(subject).to receive(:dice).and_return(4)
      expect(subject.move).to eq(8)
    end
  end

  describe '#position' do
    it 'starts with a player 1 position array starting at 0' do
      expect(subject.position).to eq(0)
    end
  end
end
