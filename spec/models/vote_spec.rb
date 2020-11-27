require 'rails_helper'

RSpec.describe Vote, type: :model do
  describe 'Associations' do
    it 'belongs_to article' do
      association = described_class.reflect_on_association(:article).macro
      expect(association).to eq :belongs_to
    end
  end
end
