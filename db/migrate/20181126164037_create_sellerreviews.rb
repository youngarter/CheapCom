class CreateSellerreviews < ActiveRecord::Migration[5.2]
  def change
    create_table :sellerreviews do |t|
      t.integer :rating
      t.text :comment
      t.references :seller, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
