class Lyric < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :lyrics, presence: true
end
