class AddVideoLinkToStory < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :video_link, :string
  end
end
