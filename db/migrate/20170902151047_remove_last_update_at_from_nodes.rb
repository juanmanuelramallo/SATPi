class RemoveLastUpdateAtFromNodes < ActiveRecord::Migration[5.1]
  def change
    remove_column :nodes, :last_update_at
  end
end
