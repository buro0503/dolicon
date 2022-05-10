class AddHikukairyakusyouToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :hikukairyakusyou, :text
  end
end
