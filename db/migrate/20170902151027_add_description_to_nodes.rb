class AddDescriptionToNodes < ActiveRecord::Migration[5.1]
  def change
    add_column :nodes, :description, :string
  end
end
