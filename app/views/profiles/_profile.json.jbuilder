json.extract! profile, :id, :name, :avatar_picture, :email, :phone, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)