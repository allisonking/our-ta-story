class Story < ApplicationRecord
  mount_uploader :thumbnail, ThumbnailUploader

  def self.published_not_featured(count: nil)
    #where(is_published: true, is_featured: false).order(created_at: :desc).limit(count)
    where(is_published: true, is_featured: false).order(:rank).limit(count)
  end

  def self.published(count: nil)
    #where(is_published: true).order(created_at: :desc).limit(count)
    where(is_published: true).order(:rank).limit(count)
  end

  def self.by_date
    order(created_at: :desc)
  end

  def self.by_rank
    order(:rank)
  end

  def self.featured
    where(is_featured: true).limit(6) || Story.by_date.first
  end

  def youtube_id
    YouTubeAddy.extract_video_id(self.video_link)[0,11]
  end

end
