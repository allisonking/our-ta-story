require 'net/http'
require 'json'

class Story < ApplicationRecord
  #validates :name, presence: true
  mount_uploader :thumbnail, ThumbnailUploader
  acts_as_taggable
  has_many :comments
  
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

  def self.featured(count: nil)
    #where(is_featured: true).limit(count) || Story.by_date.first
    where(is_featured: true).order(:rank).limit(count)
  end

  def youtube_id
    YouTubeAddy.extract_video_id(self.video_link)[0,11]
  end

  def soundcloud_thumb
    get_soundcloud_thumb()
  end

  private
  def get_soundcloud_thumb()
    url = "http://soundcloud.com/oembed?format=js&url=" + self.audio_link
    puts url
    uri = URI.parse(url)

    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)

    response = http.request(request)
    body = response.body[1..-1].chomp(');')

    result = JSON.parse(body)
    return result['thumbnail_url']
  end

end
