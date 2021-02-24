require 'rails_helper'

RSpec.describe Courses, type: :model do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
  end

  describe 'relationships' do
    it { should belong_to :student 
  end
end