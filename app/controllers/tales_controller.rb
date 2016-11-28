class TalesController < ApplicationController
  def create
    @character = Character.find(params[:character_id])
    @tale = @character.tale.create(tale_params)
    redirect_to character_path(@character)
  end

  private
    def tale_params
      params.require(:tale).permit(:player, :story)
    end
end
