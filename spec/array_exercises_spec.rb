require "array_exercises"

describe Array do
  let(:test_array) { [1, 2, 1, 3, 3] }
  let(:test_array2) { [-1, 0, 2, -2, 1] }
  let(:twod_array) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
  let(:stock_prices) {[10, 20, 5, 15, 25]}

  describe "Array#my_uniq" do
    it "returns unique elements" do
      expect(test_array.my_uniq).to eq([1, 2, 3])
    end
  end

  describe "Array#two_sum" do
    it "finds pairs that sum to 0" do
      expect(test_array2.two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "Array#my_tranpose" do
    it "transpose a matrix" do
      expect(twod_array.my_transpose).to eq(twod_array.transpose)
    end
  end

  describe "Array#stock_picker" do
    it "picks the most profitable pair of days" do
      expect(stock_prices.stock_picker).to eq([2, 4])
    end
  end
end
