class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :origin_url
      t.string :picture_url

      t.timestamps
    end
  end
end
