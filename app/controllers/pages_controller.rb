class PagesController < ApplicationController
  skip_before_action :authenticate_skater!, only: :home
  def home
  end
end
