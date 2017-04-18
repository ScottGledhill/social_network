require 'rails_helper'


feature 'profile page' do

  context 'username' do

    user = User.create(email: "test@test.com", username: 'test', password: 111111, password_confirmation: 111111)
    scenario 'should display profile username' do
      visit "/profiles/#{user.id}"
      expect(page).to have_content 'tester'
    end
  end

  scenario 'should display tweets from username' do
    visit "/profiles/#{user.id}"
    expect(page).to have_content 'test tweet'
  end
end
