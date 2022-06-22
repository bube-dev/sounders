class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.integer :total
      t.integer :available
      t.float :price

      t.timestamps
    end
  end
end
