RSpec.shared_examples 'is valid' do
  specify 'returns valid after ActiveRecord action' do
    expect(valid_result).to be_valid
  end
end

RSpec.shared_examples 'is invalid' do
  specify 'returns invalid after ActiveRecord action' do
    expect(invalid_result).not_to be_valid
  end
end

RSpec::Matchers.define_negated_matcher :not_change, :change
