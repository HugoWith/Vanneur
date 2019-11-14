class AddCoordinatesToVans < ActiveRecord::Migration[6.0]
  def change
    add_column :vans, :latitude, :float
    add_column :vans, :longitude, :float
  end
end
