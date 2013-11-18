# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :algorithm do
    name "MyString"
    identifier "MyString"
    type ""
    subtype "MyString"
    fault_class "MyString"
    title "MyString"
    detections_to_verify 1
    detection_checks_until_reset 1
    detection_enabled false
    response_enabled false
    description "MyText"
  end
end
