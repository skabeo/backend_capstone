class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: { to_table: 'users' }, index: true
      t.references :property, null: false, foreign_key: { to_table: 'properties' }, index: true
      t.date :date_of_visit
      t.string :city
      t.timestamps
    end
  end
end
