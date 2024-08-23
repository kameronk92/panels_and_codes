require './panel.rb'

RSpec.describe 'solution' do
  it 'accepts two arguments' do
    panel = "2311453915" 
    codes = ["0211", "639"]

    expect(solution(panel, codes)).to eq(["not found", "11", "not found", "39", "not found"])
  end

  it 'Test Case 1: Basic Test Case' do
    panel = "2311453915"
    codes = ["0211", "639"]
    expect(solution(panel, codes)).to eq(["not found", "11", "not found", "39", "not found"])
  end

  it 'Test Case 2: Single Character Panel' do
    panel = "5"
    codes = ["15", "01", "50"]
    expect(solution(panel, codes)).to eq(["not found", "not found", "not found"])
  end

  it 'Test Case 3: Codes Larger Than Panel' do
    panel = "123"
    codes = ["12345", "67890"]
    expect(solution(panel, codes)).to eq(["not found", "not found", "not found", "not found", "not found", "not found", "not found", "not found"])
  end

  it 'Test Case 4: Overlapping Patterns' do
    panel = "123123123"
    codes = ["1123", "2312"]
    expect(solution(panel, codes)).to eq(["not found", "not found", "not found", "312", "not found", "not found"])
  end

  it 'Test Case 5: Repeated Digits' do
    panel = "1111111"
    codes = ["011", "111"]
    expect(solution(panel, codes)).to eq(["11", "1", "11", "not found"])
  end

  it 'Test Case 6: Non-Existent Patterns' do
    panel = "9876543210"
    codes = ["100", "2345", "876"]
    expect(solution(panel, codes)).to eq(["not found", "not found", "not found", "not found", "not found", "not found", "not found"])
  end

  it 'Test Case 7: Empty Panel' do
    panel = ""
    codes = ["123", "456"]
    expect(solution(panel, codes)).to eq("panel must be a string of digits")
  end

  it 'Test Case 8: Multiple Valid Patterns' do
    panel = "1234567890"
    codes = ["0123", "234", "4567"]
    expect(solution(panel, codes)).to eq(["123", "23", "not found", "34", "not found", "567", "not found", "not found"])
  end

  it 'Test Case 9: Patterns at Start or End' do
    panel = "9081726354"
    codes = ["9081", "354"]
    expect(solution(panel, codes)).to eq(["not found", "not found", "not found", "not found", "not found"])
  end

  it 'Test Case 10: Large Panel with Short Codes' do
    panel = "12345678901234567890"
    codes = ["012", "123", "678"]
    expect(solution(panel, codes)).to eq(["12", "2", "23", "3", "78", "not found"])
  end
end
