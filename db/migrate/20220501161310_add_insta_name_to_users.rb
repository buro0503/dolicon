class AddInstaNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :insta_name, :text
  end
end
