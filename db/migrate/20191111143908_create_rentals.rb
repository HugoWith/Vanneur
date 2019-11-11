class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.date :rental_date
      t.references :van, null: false, foreign_key: true
      t.references :customer, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
