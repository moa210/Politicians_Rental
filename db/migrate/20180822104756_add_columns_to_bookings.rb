class AddColumnsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :date_from, :date
    add_column :bookings, :date_to, :date
  end
end
