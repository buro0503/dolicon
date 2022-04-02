class RemoveSyuruiFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :syurui, :integer
  end
end
