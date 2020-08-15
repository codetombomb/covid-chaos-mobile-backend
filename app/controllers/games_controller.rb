class GamesController < ApplicationController

    def index
      games = Game.all
      render json: games
    end
  
    def create
      game = Game.create(user_id: params[:user_id], duration: params[:duration], score: params[:score]);
      render json: game
    end
  
   
  end