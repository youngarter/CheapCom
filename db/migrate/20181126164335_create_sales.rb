class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :client, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :discount

      t.timestamps
    end
  end
end
