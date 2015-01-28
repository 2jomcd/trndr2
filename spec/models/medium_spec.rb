require 'rails_helper'

RSpec.describe Medium, :type => :model do
  describe 'Attributes' do
		it { is_expected.to respond_to :title}
		it { is_expected.to respond_to :artist}
		it { is_expected.to respond_to :type}
		it { is_expected.to respond_to :url}
		it { is_expected.to respond_to :img_url}
		it { is_expected.to respond_to :prevw_url}
	end
end
