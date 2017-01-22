class Story < ApplicationRecord

  def self.published(count: nil)
    where(is_published: true).order(created_at: :desc).limit(count)
  end

  def self.by_date
    order(created_at: :desc)
  end
end
