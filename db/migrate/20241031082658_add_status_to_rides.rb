class AddStatusToRides < ActiveRecord::Migration[7.2]
  def change
    add_column :rides, :status, :integer, default: 0
  end
end
