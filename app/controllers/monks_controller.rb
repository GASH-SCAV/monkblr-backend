class MonksController < ApplicationController
  def create
    monk = Monk.create(name: params["monkName"],  password: params["password"])
    if monk.valid?
      render json: monk
    else
      render json: {error: monk.errors.full_messages.to_sentence}
    end
  end

  def show
  end

  def index
  end
end
