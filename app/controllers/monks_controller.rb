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
    monk = Monk.find(params[:id])
    render json: monk
  end

  def index
  end

  def login
    monk = Monk.where("LOWER(name) = ? AND password = ?", params["monkName"].downcase, params["password"]).first
    if monk
      render json: monk
    else
      render json: {error: "That combination of ordained Monk and Favorite Saint not found."}
    end
  end
end
