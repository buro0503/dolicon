class AddSyuruiToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :syurui, :integer
  end
end
