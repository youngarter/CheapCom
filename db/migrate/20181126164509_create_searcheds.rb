class CreateSearcheds < ActiveRecord::Migration[5.2]
  def change
    create_table :searcheds do |t|
      t.string :location
      t.string :keyword
      t.references :client, foreign_key: true
      t.references :producttype, foreign_key: true

      t.timestamps
    end
  end
end
