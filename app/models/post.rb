class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :image2, ImageUploader

  belongs_to :user
  
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  geocoded_by :address
after_validation :geocode, if: :address_changed?
validates :start_time, presence: true
validates :name1, presence: true, unless: :hikukainame?
validates :hikukainame ,presence: true, unless: :name1?
validates :prefecture_id, presence: true

end
