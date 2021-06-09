class Spot < ApplicationRecord
  belongs_to :skater
  has_many :tags, dependent: :destroy
  has_many :check_ins
  has_many_attached :photos
  validates :name, presence: true, length: { in: 3..30 }
  acts_as_favoritable
end
