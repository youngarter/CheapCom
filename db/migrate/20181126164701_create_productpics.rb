class CreateProductpics < ActiveRecord::Migration[5.2]
  def change
    create_table :productpics do |t|
      t.text :alt
      t.text :src
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
