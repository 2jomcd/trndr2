class AddCountryInFavorites < ActiveRecord::Migration
  def change
  	add_column :favorites, :country, :string
  end
end
