class AddAudioLinkToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :audio_link, :string
  end
end
