json.extract! reservation, :id, :name, :start_time, :end_time, :customer, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
