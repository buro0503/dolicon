class Post < ApplicationRecord
  

  mount_uploader :image, ImageUploader
  mount_uploader :image2, ImageUploader


  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :comments, dependent: :destroy
  has_many :post_labels, dependent: :destroy, foreign_key: 'post_id'
  has_many :labels, through: :post_labels, source: :label


  geocoded_by :address
after_validation :geocode, if: :address_changed?
validates :start_time, presence: true
validates :name1, presence: true
validates :name2, presence: true
validates :prefecture_id, presence: true
validates :start_time, presence: true
validates :name2, presence: true
end
