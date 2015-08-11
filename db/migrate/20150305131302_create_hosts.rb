class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :address
      t.string :picture_url

      t.timestamps
    end
  end
end
