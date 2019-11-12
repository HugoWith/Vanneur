class ChangeDefaultValueHyppyness < ActiveRecord::Migration[6.0]
  def change
    change_column :vans, :hyppyness, :boolean, default: false
  end
end
