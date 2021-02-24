class Course < ApplicationRecord
  validates :name, presence: true
  validates :time, presence: true
  
  has_many :course_students
end
