class Post < ApplicationRecord
  belongs_to :monk
  belongs_to :replied_post, class_name: 'Post', foreign_key: 'post_id', optional: true
  has_many :replies, class_name: "Post", foreign_key: 'post_id'
  has_many :sanctifies

  def username
    monk.name
  end

  def location
    monk.location
  end
end
