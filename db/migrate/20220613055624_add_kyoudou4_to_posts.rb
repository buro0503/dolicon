class AddKyoudou4ToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :kyoudou4, :text
  end
end
