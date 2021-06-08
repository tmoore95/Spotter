class SpotsController < ApplicationController
    skip_before_action :authenticate_skater!, only: [:show, :index]
  def index
    @spots =  Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
    @tag = Tag.new
    @tags = @spot.tags.all
    @checked_in = CheckIn.all
    @result = @checked_in.select {|c| c.skater_id == current_skater.id && (Time.now - c.created_at) < 20.seconds && c.spot_id == @spot.id }
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.skater = current_skater
    if @spot.save
      redirect_to @spot
    else
      render :new
    end
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def update
    @spot = Spot.find(params[:id])
    if @spot.update(spot_params)
      redirect_to spot_path(@spot)
    else
      render :edit
    end
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
    redirect_to root_path
  end

  private

  def spot_params
    params.require(:spot).permit(:name, :description, :stairset, :security, :location, :cover, :ledge, :flatground, photos: [])
  end
end
