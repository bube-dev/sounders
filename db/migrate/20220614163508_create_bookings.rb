class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :phone_no
      t.string :email
      t.date :check_in
      t.date :check_out

      t.timestamps
    end
  end
end
