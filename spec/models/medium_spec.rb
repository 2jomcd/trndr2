require 'rails_helper'

RSpec.describe Medium, :type => :model do
  describe 'Attributes' do
		it { is_expected.to respond_to :title}
		it { is_expected.to respond_to :artist}
		it { is_expected.to respond_to :kind}
		it { is_expected.to respond_to :site}
		it { is_expected.to respond_to :img}
		it { is_expected.to respond_to :prevw}
	end
end
