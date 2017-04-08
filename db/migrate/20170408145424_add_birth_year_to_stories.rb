class AddBirthYearToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :birth_year, :integer
  end
end
