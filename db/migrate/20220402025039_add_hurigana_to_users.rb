class AddHuriganaToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :hurigana, :integer
  end
end
