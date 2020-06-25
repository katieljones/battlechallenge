require 'player.rb'

describe Player do
  it 'returns its own name' do
    player = Player.new("name")
    expect(player.name).to eq "name"
  end
  it 'has a hp of 100 on initialize' do
    player = Player.new("name")
    expect(player.hp).to eq 100
  end
  describe '#attack' do
    it 'reduces hp points by 10' do
    player = Player.new("name")
    expect{ player.attack }.to change { player.hp }.by -10
    end
  end
end
