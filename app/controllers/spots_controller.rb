class SpotsController < ApplicationController
    skip_before_action :authenticate_skater!, only: [:show, :index]
  def index

    if params[:filters].present?
      filters = {
        stairset: (params[:filters][:stairset] == "1"),
        ledge: (params[:filters][:ledge] == "1"),
        cover: (params[:filters][:cover] == "1"),
        flatground: (params[:filters][:flatground] == "1")
      }
      @spots = Spot.where(filters.select { |_k, v| v })
    else
      @spots =  Spot.all
    end

    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window: render_to_string(partial: "info_window", locals: { spot: spot })
      }
    end
  end

  def show
    @current_skater = current_skater
    @spot = Spot.find(params[:id])
    @tag = Tag.new
    @tags = @spot.tags.all
    if @current_skater
      @checked_in = CheckIn.all
      @result = @checked_in.select {|c| c.skater_id == current_skater.id && (Time.now - c.created_at) < 2.hours && c.spot_id == @spot.id }
      @atm = @checked_in.select { |c| (Time.now - c.created_at) < 2.hours && c.spot_id == @spot.id }
    end
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

  def toggle_favorite
    @spot = Spot.find(params[:id])
    current_skater.favorited?(@spot) ? current_skater.unfavorite(@spot) : current_skater.favorite(@spot)
  end

  private

  def spot_params
    params.require(:spot).permit(:name, :description, :stairset, :security, :location, :cover, :ledge, :flatground, photos: [])
  end
end
