json.extract! user, :id, :provider, :uid, :user_name, :image_url, :created_at, :updated_at
json.url user_url(user, format: :json)
