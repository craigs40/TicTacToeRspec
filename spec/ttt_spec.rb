require_relative '../lib/player'
require_relative '../lib/board'
require_relative '../bin/game'

RSpec.describe Player do
  let!(:p1_array) { [1, 2, 3] }
  let!(:p2_array) { [4, 5, 6] }
  describe '#initialize' do
    it 'initializes player array' do
      expect(@p1_array).to eq([1, 2, 3])
    end
    it 'does not add letters to the array' do
      expect(@p2_array).not_to eq([a, b, c])
    end
  end
end

RSpec.describe Board do
  let!(:board) { Board.new }
  describe '#board' do
    it 'initializes the board' do
      expect(@board).to eq(nil)
    end
    it 'does not display the player symbol' do
      expect(@board).not_to eq([x])
    end
  end
end

RSpec.describe '#display' do
  it 'should display empty cells' do
    board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    expect(display(board)).to start_with('0 | 1 | 2')
  end
  it 'should not change board layout' do
    expect(display(board)).not_to start_with('4 | 5 | 6')
  end
end
