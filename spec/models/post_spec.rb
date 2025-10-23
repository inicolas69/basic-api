require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { build(:post) }

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_most(100) }
    it { should validate_presence_of(:content) }
  end
end
