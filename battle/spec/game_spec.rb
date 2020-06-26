require 'game.rb'
describe Game do
  subject(:game) { Game.new }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'reduces player 2 hit points' do
    expect(player_2).to receive(:attacked)
    game.attack(player_2)
  end
  end
end
