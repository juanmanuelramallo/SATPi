class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :email
      t.integer :address_id
      t.string :phone

      t.timestamps
    end
  end
end
