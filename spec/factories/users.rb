FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "foo_#{n}@bar.com" }

    name      "FooBar McBaz"
    is_admin  false

    factory :admin_user do
      is_admin true
    end
  end
end
