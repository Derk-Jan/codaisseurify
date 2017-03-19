class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.references :artist
      t.string :title
      t.string :composer
      t.string :album
      t.string :audio_url

      t.timestamps
    end
  end
end
