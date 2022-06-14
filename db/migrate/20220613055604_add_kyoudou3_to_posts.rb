class AddKyoudou3ToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :kyoudou3, :text
  end
end
