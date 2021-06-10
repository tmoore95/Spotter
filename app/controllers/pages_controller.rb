class PagesController < ApplicationController
  skip_before_action :authenticate_skater!, only: :home
  def home
  end

  def profile
   @skater = Skater.find(params[:id])
   @current_skater = current_skater
  end

  def toggle_favorite
    @skater = Skater.find(params[:id])
    current_skater.favorited?(@skater) ? current_skater.unfavorite(@skater) : current_skater.favorite(@skater)
  end
end
