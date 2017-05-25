class CreateSelections < ActiveRecord::Migration[5.1]
  def change
    create_table :selections do |t|
      t.references :list, foreign_key: true
      t.references :track, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
