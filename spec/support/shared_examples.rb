RSpec.shared_examples_for 'test instance attributes' do
  it do
    { value_strip: 'text', value: '  text  ' }.each do |attr, value|
      expect(test.send(attr)).to eq value
    end
  end
end
