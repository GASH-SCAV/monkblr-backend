class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :username, :location
  has_many :replies do
    object.replies.order(created_at: :asc)
  end

  has_many :sanctifies do
    object.sanctifies.count
  end

  has_many :condemns do
    object.condemns.count
  end
end
