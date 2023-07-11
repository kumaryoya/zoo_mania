class Post < ApplicationRecord
  belongs_to :user
  belongs_to :zoo

  validates :title, presence: true, length: { maximum: 255 }
end
