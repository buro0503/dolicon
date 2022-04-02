class RemovePrefectureCodeFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :prefecture_code, :integer
  end
end
