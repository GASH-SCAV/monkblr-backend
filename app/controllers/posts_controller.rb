class PostsController < ApplicationController
  def create
    post = Monk.find_by(id: params["monk_id"]).posts.create(content: params["content"])
    render json: Post.all.order(created_at: :desc).includes(:monk)
  end

  def index
    render json: Post.all.order(created_at: :desc).includes(:monk)
  end
end
