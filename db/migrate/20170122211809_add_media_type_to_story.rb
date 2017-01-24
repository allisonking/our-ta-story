class AddMediaTypeToStory < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :media_type, :string
  end
end
