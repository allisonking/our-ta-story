class Story < ApplicationRecord

  def self.published(count: nil)
    where(is_published: true).where(is_featured: false || nil).order(created_at: :desc).limit(count)
  end

  def self.by_date
    order(created_at: :desc)
  end

  def self.featured
    where(is_featured: true).first || where(is_published: true).last
  end
end
