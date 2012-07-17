
FactoryGirl.define do
  factory :home, :class => Refinery::Homes::Home do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

