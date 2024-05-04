class SanctifiesController < ApplicationController
  def create
    s = Sanctify.create(monk_id: params["monk_id"], post_id: params["post_id"])
    render json: {likes: s.post.sanctifies.count}
  end
end
