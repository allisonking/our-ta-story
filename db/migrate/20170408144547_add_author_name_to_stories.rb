class AddAuthorNameToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :author_name, :string
  end
end
