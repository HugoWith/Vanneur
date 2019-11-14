class ChangeHyppynessName < ActiveRecord::Migration[6.0]
  def change
    rename_column :vans, :hyppyness, :hippyness
  end
end
