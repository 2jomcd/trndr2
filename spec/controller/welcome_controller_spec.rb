require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
	describe '#index' do
		before { get :index }

		it 'returns http status 200' do
			expect(response).to be_success
		end

		it 'renders the welcome/index view' do
			expect(response).to render_template 'welcome/index'
		end
	end
end
