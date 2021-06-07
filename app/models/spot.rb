class Spot < ApplicationRecord
  belongs_to :skater
  has_many :tags
  has_many :check_ins
  validates :name, presence: true, length: { in: 3..30 }
end
