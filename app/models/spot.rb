class Spot < ApplicationRecord
  belongs_to :skater
  has_many :tags, dependent: :destroy
  has_many :check_ins, dependent: :destroy
  has_many_attached :photos
  validates :name, presence: true, length: { in: 3..30 }
  validates :photos, presence: true
  acts_as_favoritable
end
