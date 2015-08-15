module SercheableBooking
  extend ActiveSupport::Concern

  included do |base|
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    __elasticsearch__.index_name 'bookings'
    __elasticsearch__.settings index: { number_of_shards: 2 } do
      __elasticsearch__.mappings dynamic: 'true' do
        indexes :id, type: 'integer'
        indexes :room_id, type: 'integer'
        indexes :number_of_guests, type: 'string'
        indexes :start_date, type: 'date', format: 'YYYY-MM-DD'
        indexes :end_date, type: 'date', format: 'YYYY-MM-DD'
      end
    end
  end

  def as_indexed_json(options={})
    {
        id: id,
        room_id: room_id,
        number_of_guests: number_of_guests.to_s,
        start_date: start_date,
        end_date: end_date
    }
  end

end