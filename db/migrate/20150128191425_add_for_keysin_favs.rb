class AddForKeysinFavs < ActiveRecord::Migration
  def change
  	add_column :favorites, :user_id, :integer
  	add_column :favorites, :medium_id, :integer
  end
end
