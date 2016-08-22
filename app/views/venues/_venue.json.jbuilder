json.extract! venue, :id, :name, :rating, :address, :created_at, :updated_at
json.url venue_url(venue, format: :json)