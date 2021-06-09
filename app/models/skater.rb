class Skater < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :spots
  has_many :tags
  has_many :check_ins
  # validates :username, presence: true, uniqueness: true
  acts_as_favoritor
  acts_as_favoritable
end
