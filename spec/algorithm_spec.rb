require_relative '../algorithm'

describe '#bubble_sort' do
  it 'should return an array with only number 1 inside' do
    array = [1]
    response = bubble_sort_desc(array)
    expect(response).to eq [1]
  end

  it 'should work with duplicate values in input' do
    array = [3, 4, 2, 2, 4, 5, 1]
    response = bubble_sort_desc(array)
    expect(response).to eq [5, 4, 4, 3, 2, 2, 1]
  end

  it 'should return the sorted array in descending order' do
    array = (1..38).to_a
    response = bubble_sort_desc(array)
    expect(response).to eq array.reverse
  end

  it 'should return the sorted array in ascending order' do
    array = (1..37).to_a
    response = bubble_sort_desc(array)
    expect(response.reverse).to eq array
  end
end
