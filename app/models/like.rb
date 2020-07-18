class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  scope :popular, -> { select('post_id, count(post_id) as count').group(:post_id).order('count desc').limit(3) }
end
