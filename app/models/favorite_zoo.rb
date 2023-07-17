class FavoriteZoo < ApplicationRecord
  belongs_to :user
  belongs_to :zoo

  validates :rank, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3 }
  validate :validate_rank_uniqueness
  validate :validate_zoo_uniqueness

  private

  def validate_rank_uniqueness
    return unless rank.present? && user_id.present?
    existing_records = FavoriteZoo.where(user_id: user_id, rank: rank)
    errors.add(:rank, "はすでに登録されています") if existing_records.exists?
  end

  def validate_zoo_uniqueness
    return unless zoo_id.present? && user_id.present?
    existing_records = FavoriteZoo.where(user_id: user_id, zoo_id: zoo_id)
    errors.add(:zoo_id, "すでに登録されています") if existing_records.exists?
  end
end
