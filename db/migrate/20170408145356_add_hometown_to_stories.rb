class AddHometownToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :hometown, :string
  end
end
