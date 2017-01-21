class Story < ApplicationRecord
  scope :published, -> { where(is_published: true) }
end
