class AddDescriptionToSensors < ActiveRecord::Migration[5.1]
  def change
    add_column :sensors, :description, :string
  end
end
