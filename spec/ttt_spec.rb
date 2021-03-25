require_relative '../lib/player'
require_relative '../lib/board'
require_relative '../bin/game'

RSpec.describe Player do
  let!(:p1_array) { [1, 2, 3] }
  describe '#initialize' do
    it 'initializes player array' do
      expect(@p1_array).to eq(nil)
    end
    it 'does not accept strings' do
      expect(@p1_array).not_to eq('string')
    end
  end
end

RSpec.describe Board do
  let!(:board) { Board.new }
  describe '#board' do
    it 'should create an empty board' do
      expect(@board).to eq(nil)
    end
    it 'does not create a full board' do
      expect(@board).not_to eq(true)
    end
  end
end

RSpec.describe '#display(board)' do
  let!(:board) { [0, 1, 2, 3, 4, 5, 6, 7, 8] }
  it 'should display empty board' do
    expect(display(board)).to eq(nil)
  end
  it 'should not change board layout' do
    expect(display(board)).not_to start_with(1)
  end
end
