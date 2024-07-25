class Lyric < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true
  validates :lyric, presence: true

  scope :older_than_24_hours, -> { where('created_at < ?', 24.hours.ago) }
end
