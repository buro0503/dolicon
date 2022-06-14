class AddKyoudou2ToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :kyoudou2, :text
  end
end
