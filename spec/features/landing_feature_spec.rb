require 'rails_helper'

	feature 'Search what is trending', type: :feature do
		scenario 'displaying the top 10 by country' do
			visit '/'
			within 'h1' do
			expect(page).to have_content 'Trender home page'
		end
	end
end