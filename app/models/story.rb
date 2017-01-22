class Story < ApplicationRecord
  scope :published, -> { where(is_published: true).order(created_at: :desc).limit(4) }
end
