class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :name1
      t.text :name2
      t.integer :month
      t.integer :day
      t.text :detail
      t.string :image
      t.text :music
      t.text :site
      t.integer :user_id
      t.string :address
      t.float :latitude
      t.date :date
      t.string :image2

      t.timestamps
    end
  end
end
