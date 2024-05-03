class PostsController < ApplicationController
  def create
    post = User.find_by(id: params["user_id"]).posts.create(content: params["content"])
    render json: post
  end

  def index
    render json: Post.all.order(created_at: :desc).includes(:monk)
  end
end
