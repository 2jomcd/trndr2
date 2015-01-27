require "rails_helper"

RSpec.describe HomeController, type: :routing do
	it 'routes to home page' do
		expect(get('/')).to route_to('home#index')
	end
end