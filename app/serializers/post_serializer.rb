class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :username, :location
  has_many :replies do
    object.replies.order(created_at: :desc)
  end
end
