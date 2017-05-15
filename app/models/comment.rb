class Comment < ApplicationRecord
  belongs_to :story

  def self.by_date
    order(created_at: :desc)
  end
end
