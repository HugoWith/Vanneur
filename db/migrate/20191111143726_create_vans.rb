class CreateVans < ActiveRecord::Migration[6.0]
  def change
    create_table :vans do |t|
      t.string :town
      t.string :pictures
      t.string :description
      t.integer :prices
      t.date :availability
      t.integer :year
      t.integer :kilometers
      t.boolean :hyppyness
      t.references :owner, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
