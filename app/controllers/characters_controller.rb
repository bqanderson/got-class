class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      redirect_to @character
    else
      render 'new'
    end
  end

  private
  def character_params
    params.require(:character).permit(:name, :bio, :str, :dex, :con, :int, :wis, :cha)
  end
end
