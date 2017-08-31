class CreatePackages < ActiveRecord::Migration[5.1]
  def change
    create_table :packages do |t|
      t.float :data
      t.integer :sensor_id

      t.timestamps
    end
  end
end
