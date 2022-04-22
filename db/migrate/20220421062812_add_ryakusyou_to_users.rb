class AddRyakusyouToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :ryakusyou, :text
  end
end
