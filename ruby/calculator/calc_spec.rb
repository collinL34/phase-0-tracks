

require_relative 'calc'

describe Calculator do
let(:math) {Calculator.new}

  it 'runs the equation that was passed in' do
    expect(math.calculate(3,'+',9)).to eq 12
  end
end