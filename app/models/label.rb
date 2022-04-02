class Label < ApplicationRecord
    has_many :post_labels, dependent: :destroy, foreign_key: 'label_id'
    has_many :posts, through: :post_labels, source: :post
end
