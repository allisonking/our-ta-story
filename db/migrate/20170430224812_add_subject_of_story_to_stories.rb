class AddSubjectOfStoryToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :subject_of_story, :string
  end
end
