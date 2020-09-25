FactoryBot.define do
  factory :product do
    sequence(:name) { |n| "product#{n}" }

    description {"text_#{rand(999)}"}
  end
end
