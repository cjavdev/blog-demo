class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, as: :likeable

  after_update_commit { broadcast_update }
end
