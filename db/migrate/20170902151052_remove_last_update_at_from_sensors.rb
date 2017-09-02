class RemoveLastUpdateAtFromSensors < ActiveRecord::Migration[5.1]
  def change
    remove_column :sensors, :last_update_at
  end
end
