class AddIsPublishedToStory < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :is_published, :boolean
  end
end
