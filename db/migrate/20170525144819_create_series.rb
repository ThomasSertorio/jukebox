class CreateSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :series do |t|
      t.references :author, foreign_key: true
      t.string :origin_url
      t.string :picture_url
      t.string :title

      t.timestamps
    end
  end
end
