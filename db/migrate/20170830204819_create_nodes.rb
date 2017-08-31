class CreateNodes < ActiveRecord::Migration[5.1]
  def change
    create_table :nodes do |t|
      t.integer :state
      t.string :latitude
      t.string :longitude
      t.datetime :last_update_at

      t.timestamps
    end
  end
end
