class Student < ApplicationRecord
  has_secure_password
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates_presence_of :password, presence: true, require: true
  
  has_many :course_students
  has_many :courses, through: :course_students
end
