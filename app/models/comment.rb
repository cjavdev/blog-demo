class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  belongs_to :parent, class_name: 'Comment', optional: true
  has_many :comments, foreign_key: :parent_id
  has_many :likes, as: :likeable

  after_create_commit { broadcast_prepend_to(post, :comments) }
end
