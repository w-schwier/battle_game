require 'game'

describe Game do
  subject(:game) {described_class.new(player1, player2)}
  let(:player1) {double(:player)}
  let(:player2) {double(:player, take_damage: nil)}

  it "attacks another player" do
    expect(player2).to receive(:take_damage)
    game.attack(player2)
  end

  it "switch_players" do
    game.switch_players
    puts game.players
  end
end
