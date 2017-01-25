class AddRankToStory < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :rank, :integer
  end
end
