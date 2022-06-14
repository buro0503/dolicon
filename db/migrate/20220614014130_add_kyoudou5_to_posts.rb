class AddKyoudou5ToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :kyoudou5, :text
  end
end
