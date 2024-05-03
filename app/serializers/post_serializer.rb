class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :username, :location
end
