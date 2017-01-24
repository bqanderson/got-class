class TalesController < ApplicationController
  def create
    @character = Character.find(params[:character_id])
    @tale = @character.tales.create(tale_params)
    redirect_to character_path(@character)
  end

  def destroy
    @character = Character.find(params[:character_id])
    @tale = @character.tales.find(params[:id])
    @tale.destroy
    redirect_to character_path(@character)
  end

  private
    def tale_params
      params.require(:tale).permit(:player, :body)
    end
end
