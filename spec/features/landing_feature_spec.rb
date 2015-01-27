require 'rails_helper'

feature 'Search what is trending', type: :feature do
	scenario 'displaying the top 10 by country' do
		visit '/'
		expect(page).to have_content 'Trendr'
	end
end
