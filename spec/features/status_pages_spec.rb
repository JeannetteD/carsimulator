require 'rails_helper'
RSpec.feature "Status", type: :feature do
  context 'Going to status page' do
    Steps 'Creating a car to be simulated' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can enter values for make and model year' do
        fill_in 'make', with: 'DeLorean'
        fill_in 'model_year', with: '2017'
      end
      And 'I can start the simulation' do
        click_button 'Simulate Car'
        end
      When 'I can create a car and will display on Status page' do
        Given 'I am on the status page' do
          expect(page).to have_content("DeLorean")
          expect(page).to have_content("2017")
        end

      And 'I can accelerate' do
        Given 'I speed up in 10Km/h increments' do
          click_button 'Speed Car'
     end
    end

    And 'I can brake' do
      Given 'I slow down to 7m/h' do
        click_button 'Brake Car'
     end
    end
    And 'I can turn the car lights on or off' do
      Given 'lights on or off' do
        click_button 'Lights Car'
   end
  end

  And 'I can set and release car brakes' do
    Given 'I can brake using radio button' do
      click_button 'Parking Brake'
  end
  end
  end
  end
 end
end
