class CondemnsController < ApplicationController
  def create
    s = Condemn.create(monk_id: params["monk_id"], post_id: params["post_id"])
    render json: {condemns: s.post.condemns.count}
  end
end
