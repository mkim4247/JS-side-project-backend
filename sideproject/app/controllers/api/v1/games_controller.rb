class Api::V1::GamesController < ApplicationController
  before_action :set_game, only: [:update]

  def index
    @games = Game.all
    render json: @games
  end

  def update
    @game.update()
  end

  private

  def game_params
    params.require(:game).permit(:user_id)
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
