class AddDriverIdToRides < ActiveRecord::Migration[7.2]
  def change
    add_reference :rides, :driver, null: true, foreign_key: true
  end
end
