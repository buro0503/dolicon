class AddPostsyuruiToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :postsyurui, :integer
  end
end
