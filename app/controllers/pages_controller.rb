class PagesController < ApplicationController
  skip_before_action :authenticate_skater!, only: :home
  def home
  end

  def feed
    @current_skater = current_skater
    @activity = []
    @current_skater.favorited_skaters.each do |skater|
      skater.check_ins.each do |c|
      @activity << c
      end
    skater.favorited_spots.each do |fs|
      @activity << fs
    end
      @activity << Tag.find_by_skater_id(skater.id)
      @activity = @activity.compact.sort_by { |a| a.created_at }.reverse!
    end
  end
end
