class AddTwitteridToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :twitterid, :text
  end
end
