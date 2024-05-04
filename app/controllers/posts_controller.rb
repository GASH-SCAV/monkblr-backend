class PostsController < ApplicationController
  def create
    if params["post_id"]
      post = Monk.find_by(id: params["monk_id"]).posts.create(content: params["content"], post_id: params["post_id"])
      render json: post.replied_post
    else
      Monk.find_by(id: params["monk_id"]).posts.create(content: params["content"])
      render json: Post.all.where(post_id: nil).order(created_at: :desc).includes(:monk)
    end
  end

  def show
    post = Post.find_by_id(params["id"] )
    render json: post
  end

  def index
    render json: Post.all.includes(:monk).where(post_id: nil).order(created_at: :desc)
  end
end
