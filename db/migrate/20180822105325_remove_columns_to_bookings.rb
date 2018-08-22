class RemoveColumnsToBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :days
  end
end
