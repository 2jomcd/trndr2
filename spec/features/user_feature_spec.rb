require 'rails_helper'

	feature 'Managing users & user accounts', type: :feature do
		given(:user) {FactoryGirl.create(:user)}

		scenario 'users can sign up' do
			visit '/users/sign_up'
			fill_in 'Email', with: 'email@gmail.com'
	    fill_in 'Password', with: '87654321'
	    fill_in 'Password confirmation', with: '87654321'
	    click_button 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully.'
		end

		scenario 'users can sign in' do
			visit '/users/sign_in'
			fill_in 'Email', with: 'facGirl@gmail.com'
	    fill_in 'Password', with: '12345678'
	    click_button 'Log in'

    expect(page).to have_content 'Invalid email or password.'
		end
	
end