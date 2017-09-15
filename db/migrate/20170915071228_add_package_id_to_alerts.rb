class AddPackageIdToAlerts < ActiveRecord::Migration[5.1]
  def change
    add_column :alerts, :package_id, :integer
  end
end
