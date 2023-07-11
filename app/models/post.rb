class Post < ApplicationRecord
  belongs_to :user
  belongs_to :zoo
  mount_uploader :image, PostImageUploader

  validates :title, presence: true, length: { maximum: 255 }
  validates :image, presence: true
end
