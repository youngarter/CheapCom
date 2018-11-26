class CreateClientreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :clientreviews do |t|
      t.integer :rating
      t.text :comment
      t.references :client, foreign_key: true
      t.references :seller, foreign_key: true

      t.timestamps
    end
  end
end
