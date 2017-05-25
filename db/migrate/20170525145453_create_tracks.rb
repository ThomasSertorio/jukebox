class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.references :serie, foreign_key: true
      t.references :category, foreign_key: true
      t.text :description
      t.integer :duration
      t.string :origin_url
      t.datetime :plublished_on
      t.string :picture_url
      t.text :tags, array:true, default: []
      t.string :audio_file
      t.string :origin_title

      t.timestamps
    end
  end
end
