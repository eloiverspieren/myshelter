json.extract! booking, :id, :start_day, :end_day, :hikers_nb, :user_id, :refuge_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)