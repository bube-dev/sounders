class AddRoomstoBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :room, foreign_key: true
  end
end
