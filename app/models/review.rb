class Review < ApplicationRecord
  belongs_to :activity, dependent: :destroy

  validates :content, presence: true
end
