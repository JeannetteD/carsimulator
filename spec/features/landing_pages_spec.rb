require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  context 'Going to a/the landing page' do
    Steps 'Being welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can see a Welcome Message' do
        expect(page).to have_content("welcome")
      end
     end

  end
end
