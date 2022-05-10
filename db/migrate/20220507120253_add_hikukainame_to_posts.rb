class AddHikukainameToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :hikukainame, :text
  end
end
