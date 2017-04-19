require 'rails_helper'

feature 'landing page' do
  context 'has title' do
    scenario 'should display social network' do
      visit '/'
      expect(page).to have_content 'Social Network'
    end
  end

  context 'profile page' do
    scenario 'should display profile page when signed up' do
      visit '/users/sign_up'
      click_button 'Sign up'
      fill_in 'Email', with: '1@2.3.com'
      fill_in 'Username', with: 'Test'
      fill_in 'Password', with: '111111'
      fill_in 'Password confirmation', with: '111111'
      click_button 'Sign up'
      expect(page).to have_content 'Welcome Test'
    end
  end

  scenario 'should be able to search for users' do
    visit '/users/sign_up'
    click_button 'Sign up'
    fill_in 'Email', with: '1@2.3.com'
    fill_in 'Username', with: 'Test'
    fill_in 'Password', with: '111111'
    fill_in 'Password confirmation', with: '111111'
    click_button 'Sign up'
    click_link 'Sign Out'
    click_link 'Sign Up'
    fill_in 'Email', with: 'new@2.3.com'
    fill_in 'Username', with: 'New User'
    fill_in 'Password', with: '111111'
    fill_in 'Password confirmation', with: '111111'
    click_button 'Sign up'
    fill_in 'username', with: 'Test'
    click_button 'Search'
    expect(page).to have_content 'Test'
  end
end
