module SercheableRoom
  extend ActiveSupport::Concern

  included do |base|
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    __elasticsearch__.index_name 'rooms'
    __elasticsearch__.settings index: { number_of_shards: 2 } do
      __elasticsearch__.mappings dynamic: 'true' do
        indexes :id, type: 'integer'
        indexes :capacity, type: 'string'
      end
    end
  end

  def as_indexed_json(options={})
    {
        id: id,
        capacity: capacity.to_s
    }
  end

end