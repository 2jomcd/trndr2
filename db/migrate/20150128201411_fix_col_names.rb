class FixColNames < ActiveRecord::Migration
  def change
  	remove_column :media, :url, :string
  	add_column :media, :site, :string
  	remove_column :media, :img_url, :string
  	add_column :media, :img, :string
  	remove_column :media, :prevw_url, :string
  	add_column :media, :prevw, :string
  end
end
