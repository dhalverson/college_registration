require 'rails_helper'

RSpec.describe 'As a student', type: :feature do
  before(:each) do
    @courses = create_list(:course, 5)
  end  
  it 'I see a list of all available courses' do
    visit(courses_path)

    @courses.each do |course|
      expect(page).to have_content(course.name)
      expect(page).to have_content(course.time)
    end
  end
end
