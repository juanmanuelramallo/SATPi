class CreateSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :sensors do |t|
      t.integer :type_name
      t.string :last_update_at
      t.integer :node_id

      t.timestamps
    end
  end
end
