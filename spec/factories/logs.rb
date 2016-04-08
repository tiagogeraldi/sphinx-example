FactoryGirl.define do
  factory :log do
    query 'ball'
    entries 1
    ip_address '127.0.0.1'
  end
end
