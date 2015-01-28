class AddDropColsInMedium < ActiveRecord::Migration
  def change
  	remove_column :media, :source, :string
  	add_column :media, :img_url, :string
  	add_column :media, :prevw_url, :string
  end
end
