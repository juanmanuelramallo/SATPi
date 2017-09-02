class AddDataTypeToSensors < ActiveRecord::Migration[5.1]
  def change
    add_column :sensors, :data_type, :string
  end
end
