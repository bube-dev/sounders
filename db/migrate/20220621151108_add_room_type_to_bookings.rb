class AddRoomTypeToBookings < ActiveRecord::Migration[7.0]
  def change
    #add_reference :bookings, :rooms, null: false, foreign_key: false
    add_foreign_key :bookings, :rooms, column: :room_type
  end
end
