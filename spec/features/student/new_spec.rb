require 'rails_helper'

RSpec.describe 'When a user visits the root path' do
  before(:each) do
    @user_01 = create(:student)
  end

  it 'I see a link to register' do
    visit(root_path)
    expect(page).to have_link('Register')
  end

  it 'Creates a new student' do
    visit(root_path)

    click_link('Register')
    expect(current_path).to eq(new_student_path)

    username = @user_01.email
    password = 'test123'

    click_button('Create User')
    expect(current_path).to eq(root_path)
    
    expect(page).to have_content("Welcome, #{username}!")
  end
end