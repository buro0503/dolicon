class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post
  has_many :comments, dependent: :destroy

  validates :email, presence: true

  validates :name, length: { maximum: 50 }
  validates :profile, length: { maximum: 200 } 
  validates :password, confirmation: true

  def already_liked?(post_id)
    likes.where(post_id: post_id).exists?
  end
end
