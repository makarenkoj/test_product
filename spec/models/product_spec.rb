require 'rails_helper'

RSpec.describe Product, type: :model do

  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:name) }

  it do
    should validate_length_of(:name).
        is_at_least(3).is_at_most(30)
  end

end
