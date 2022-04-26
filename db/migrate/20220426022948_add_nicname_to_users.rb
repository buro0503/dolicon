class AddNicnameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nicname, :text
  end
end
