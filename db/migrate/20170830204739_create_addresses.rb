class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :state
      t.string :city
      t.string :zip
      t.string :address
      t.integer :node_id

      t.timestamps
    end
  end
end
