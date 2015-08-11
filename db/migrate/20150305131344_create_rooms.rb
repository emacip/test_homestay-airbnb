class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :host_id, null:false
      t.integer :capacity, null:false

      t.timestamps
    end
  end
end
