class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :room_id, null:false
      t.date :start_date, null:false
      t.date :end_date, null:false
      t.integer :number_of_guests, null:false

      t.timestamps
    end
  end
end
