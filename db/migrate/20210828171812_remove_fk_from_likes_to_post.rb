class RemoveFkFromLikesToPost < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :likes, :posts
  end
end
