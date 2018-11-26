class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :firstname
      t.string :lastname
      t.text :address
      t.string :city
      t.string :location

      t.timestamps
    end
  end
end
