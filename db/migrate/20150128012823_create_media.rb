class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.string :artist
      t.string :type
      t.string :source
      t.string :url

      t.timestamps null: false
    end
  end
end
