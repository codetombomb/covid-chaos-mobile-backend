class UsersController < ApplicationController
  def index
    if params[:username]
      users = User.find_by(name: params[:username])
    else
      users = User.all
    end
    render json: users, include: :games
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :games
  end

  def create
    user = User.create(name: params[:name])
    render json: user
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.games.destroy_all
    render json: user
  end
end
