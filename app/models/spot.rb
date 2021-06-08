class Spot < ApplicationRecord
  belongs_to :skater
  has_many :tags
  has_many :check_ins
  has_many_attached :photo
  validates :name, presence: true, length: { in: 3..30 }
end
