require 'rails_helper'

RSpec.describe User, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Attributes' do
		it { is_expected.to respond_to :email}
		it { is_expected.to respond_to :password}
	end

  describe 'Database' do
  	it { is_expected.to have_db_column :email}
  	it { is_expected.to have_db_column :password}
  end

  describe 'Validations' do
  	it { is_expected.to validate_presence_of :email }
  	it { is_expected.to validate_presence_of :password}
  end
end
