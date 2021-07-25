require 'snakes_and_ladders'

describe SnakesAndLadders do
  describe '#roll' do
    it 'allows players to roll a dice which returns a random number' do
      allow(subject).to receive(:rand).and_return(1)
      expect(subject.dice).to eq(1)
    end

    it 'allows players to roll a dice which returns a random number' do
      allow(subject).to receive(:rand).and_return(2)
      expect(subject.dice).to eq(2)
    end
  end
end
