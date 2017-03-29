require 'player'


describe Player do

  subject(:player) { described_class.new(name) }
  let(:name){ double :name }

  it "returns player's name" do
    expect(player.name).to eq name
  end

  it "returns player's HP" do
    expect(player.hp).to eq 100
  end

  it "reduces player's HP by 10" do
    player.take_damage
    expect(player.hp).to eq 90
  end
end
