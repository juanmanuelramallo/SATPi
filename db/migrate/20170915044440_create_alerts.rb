class CreateAlerts < ActiveRecord::Migration[5.1]
  def change
    create_table :alerts do |t|
      t.integer :status
      t.integer :sensor_id

      t.timestamps
    end
  end
end
