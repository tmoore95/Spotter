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
  
  def feed
    @current_skater = current_skater
    @activity = []
    @current_skater.favorited_skaters.each do |skater|
      skater.check_ins.each do |c|
      @activity << c
      end
    skater.favorites_by_type('Spot').each do |fs|
      @activity << fs
    end
      @activity << Tag.find_by_skater_id(skater.id)
      @activity = @activity.compact.sort_by { |a| a.created_at }.reverse!
    end
  end
end
