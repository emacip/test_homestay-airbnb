require 'csv'
class ImportData < ActiveRecord::Migration
  def change
    Host.reset_column_information
    Room.reset_column_information
    Booking.reset_column_information

    data_folder = File.dirname(__FILE__) + '/../../data/'

    hosts = []
    CSV.foreach("#{data_folder}/hosts-2000.csv", headers: :first_row) {|row| hosts << Host.new(row.to_hash)}
    puts Host.import(hosts)

    rooms = []
    CSV.foreach("#{data_folder}/rooms-2000.csv", headers: :first_row) {|row| rooms << Room.new(row.to_hash)}
    puts Room.import(rooms)

    bookings = []
    CSV.foreach("#{data_folder}/bookings-2000.csv", headers: :first_row) {|row| bookings << Booking.new(row.to_hash)}
    puts Booking.import(bookings)
  end
end
