FactoryBot.define do
  factory :course do
    name { Faker::Educator.course_name }
    time { '11:00' }
  end
end