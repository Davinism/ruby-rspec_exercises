require "towers"

describe Towers do
  let(:game) { Towers.new }
  let(:sample_array) {[3, 2, 1]}
  let(:sample_array2) {[]}

  describe "Towers#initialize" do
    it "sets array A to be the sorted array" do
      expect(game.array_a).to eq([3, 2, 1])
    end

    it "sets array B to be empty" do
      expect(game.array_b).to be_empty
    end

    it "sets array C to be empty" do
      expect(game.array_c).to be_empty
    end
  end

  describe "Towers#turn" do
    it "moves a disk from one peg to another" do
      game.turn(sample_array, sample_array2)
      expect(sample_array).to eq([3, 2])
      expect(sample_array2).to eq([1])
    end
  end

  describe "Towers#win?" do
    it "checks to see if the user won or not (boolean)" do
      game.turn(game.array_a, game.array_c)
      game.turn(game.array_a, game.array_b)
      game.turn(game.array_c, game.array_b)
      game.turn(game.array_a, game.array_c)
      game.turn(game.array_b, game.array_a)
      game.turn(game.array_b, game.array_c)
      game.turn(game.array_a, game.array_c)

      expect(game.win?).to be true
    end
  end

end
