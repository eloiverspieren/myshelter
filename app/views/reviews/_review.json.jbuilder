json.extract! review, :id, :rating, :content, :picture, :user_id, :hiking_id, :created_at, :updated_at
json.url review_url(review, format: :json)