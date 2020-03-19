class Review < ApplicationRecord
  belongs_to :activity, dependent: :destroy
end
