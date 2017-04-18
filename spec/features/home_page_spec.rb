require 'rails_helper'

feature 'landing page' do
  context 'has title' do
    scenario 'should display social network' do
      visit '/'
      expect(page).to have_content 'Social Network'
    end
  end
end
