require 'rails_helper'

feature 'profile page' do
  context 'username' do
    scenario 'should display profile username' do
      user = create(:user)
      visit '/users/sign_up'
      click_button 'Sign up'
      fill_in 'Email', with: '1@2.3.com'
      fill_in 'Username', with: 'Test'
      fill_in 'Password', with: '111111'
      fill_in 'Password confirmation', with: '111111'
      click_button 'Sign up'
      visit profile_path(user)
      expect(page).to have_content 'Test Name'
    end
  end
end
