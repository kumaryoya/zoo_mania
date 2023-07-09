class Zoo < ApplicationRecord

  has_many :favorite_zoos
  has_many :users, through: :favorite_zoos

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true, uniqueness: true
  validates :area, presence: true
  validates :link, presence: true, uniqueness: true
end
