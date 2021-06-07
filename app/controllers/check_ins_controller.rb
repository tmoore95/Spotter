class CheckInsController < ApplicationController
  def create
    @check_in = CheckIn.new
    @spot = Spot.find(params[:spot_id])
    @check_in.skater = current_skater
    @check_in.spot_id = params[:spot_id]
    @check_in.save
    redirect_to @spot
  end
end