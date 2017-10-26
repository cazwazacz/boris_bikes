require 'van'

describe Van do
  it 'collects broken bikes' do
    expect(subject).to respond_to(:collect).with(1).argument
  end
end
