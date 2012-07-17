
FactoryGirl.define do
  factory :site, :class => Refinery::Sites::Site do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

