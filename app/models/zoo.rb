class Zoo < ApplicationRecord

  has_many :favorite_zoos
  has_many :users, through: :favorite_zoos
  has_many :posts, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true, uniqueness: true
  validates :area, presence: true
  validates :link, presence: true, uniqueness: true

  scope :top_ranked, -> {
    joins(:favorite_zoos)
      .select('zoos.*, COUNT(favorite_zoos.id) AS selection_count')
      .group('zoos.id')
      .having('COUNT(favorite_zoos.id) > 0')
      .order('COUNT(favorite_zoos.id) DESC')
  }
end
