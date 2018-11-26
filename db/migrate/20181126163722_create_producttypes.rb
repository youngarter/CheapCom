class CreateProducttypes < ActiveRecord::Migration[5.2]
  def change
    create_table :producttypes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
