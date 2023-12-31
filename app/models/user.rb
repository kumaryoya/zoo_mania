class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :favorite_zoos, dependent: :destroy
  has_many :zoos, through: :favorite_zoos
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :name, presence: true
  validates :email,presence: true, uniqueness: true
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :reset_password_token, uniqueness: true, allow_nil: true

  enum role: { general: 0, admin: 1}

  mount_uploader :avatar, AvatarUploader
end
