require 'rails_helper'

feature 'profile page' do
  context 'username' do
    before do
       User.create!(email:'1@2.3.com', username:'Test', password:'111111', password_confirmation:'111111')
     end

    scenario 'should display profile username' do
      visit '/profiles/1'
      expect(page).to have_content 'Test'
    end
  end

  before do
     Tweet.create!(message:'test tweet', user_id:1)
   end

  scenario 'should display tweets from username' do
    visit '/profiles/1'
    expect(page).to have_content 'test tweet'
  end
end
