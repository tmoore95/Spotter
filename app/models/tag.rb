class Tag < ApplicationRecord
  belongs_to :skater
  belongs_to :spot
  validates :url, presence: true
  validates :caption, presence: true, length: { in: 1..40 }
end
