require_relative '../lib/player'
require_relative '../lib/board'
require_relative '../bin/game'

RSpec.describe Player do
  let!(:p1_array) { [] }
  let!(:p2_array) { [] }
  describe 'initialize' do
    it 'initializes player variables' do
      expect(@p1_array).to eq(nil)
    end
    it 'does not add ' do
      expect(@p2_array).to eq(nil)
    end
  end
end

RSpec.describe Board do
  let!(:board) { Board.new }
  describe 'board' do
    it 'initializes the board' do
      expect(@board).to eq(nil)
    end
    it 'does not print the board' do
      expect(@board).to eq(nil)
    end
  end
end

RSpec.describe '#display' do
  it 'should display empty cells' do
    board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    expect(display(board)).to start_with('0 | 1 | 2')
  end
end
