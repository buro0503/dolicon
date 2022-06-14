class AddKyoudou1ToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :kyoudou1, :text
  end
end
