# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :access_report do
    email "MyString"
    provider "MyString"
    access_at "2012-05-15 04:49:56"
    access_ip "MyString"
  end
end
