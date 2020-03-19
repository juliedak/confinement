class Activity < ApplicationRecord
  has_many_attached :photos
  has_many :reviews

  validates :title, presence: true
  validates :content, presence: true
  # validates :photo, presence: true

end
