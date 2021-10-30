require_relative '../algorithm'

describe "#bubble_sort" do
  it "should return the sorted array in descending order" do
    array = (1..50)
    response = bubble_sort(array)
    expect(response).to eq array.sort.reverse
  end

  it "should return an array with only number 1 inside" do
    array = [1]
    response = bubble_sort(array)
    expect(response).to eq [1]
  end
end
