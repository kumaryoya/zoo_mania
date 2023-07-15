class Post < ApplicationRecord
  belongs_to :user
  belongs_to :zoo
  has_many :likes, dependent: :destroy
  mount_uploader :image, PostImageUploader

  validates :title, presence: true, length: { maximum: 255 }
  validates :image, presence: true

  scope :top_ranked, -> {
    joins(:likes)
      .select('posts.*, COUNT(likes.id) AS selection_count')
      .group('posts.id')
      .having('COUNT(likes.id) > 0')
      .order('COUNT(likes.id) DESC')
  }

  def liked?(user)
    likes.where(user_id: user.id).exists?
  end
end
