class AddEmailToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :email, :string
  end
end
