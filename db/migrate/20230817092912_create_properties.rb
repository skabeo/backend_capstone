class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :image
      t.boolean :reserve
      t.string :location
      t.integer :price
      t.timestamps
    end
  end
end
