class Spot < ApplicationRecord
  belongs_to :skater
  has_many :tags, dependent: :destroy
  has_many :check_ins, dependent: :destroy
  has_many_attached :photos
  validates :name, presence: true, length: { in: 3..30 }
  geocoded_by :location
  after_validation :add_coordinates, if: :will_save_change_to_location?
  validates :photos, presence: true
  acts_as_favoritable

  private

  def add_coordinates
    self.geocode
    unless latitude
      location = location.split(",").slice(1..-1).join
      self.save
      self.geocode
    end
  end
end

