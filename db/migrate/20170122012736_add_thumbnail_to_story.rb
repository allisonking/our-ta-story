class AddThumbnailToStory < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :thumbnail, :string
  end
end
