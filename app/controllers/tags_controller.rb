class TagsController < ApplicationController
  def create
    @tag = Tag.new(tag_params)
    @spot = Spot.find(params[:id])
    @tag.spot = @spot
    @current_skater = current_skater
    @tag.skater_id = @current_skater.id
    if @tag.save
      redirect_to spot_path(@spot)
    else
      render "spots/show"
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to root_path
  end

  private

  def tag_params
    params.require(:tag).permit(:url, :caption)
  end
end
