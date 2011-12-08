FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "foo_#{n}@bar.com" }

    name          "FooBar McBaz"
    password      'secret23'
    confirmed_at  Time.now
    is_admin      false

    factory :admin_user do
      is_admin true
    end
  end
end
