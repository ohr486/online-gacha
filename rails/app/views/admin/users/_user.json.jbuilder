json.extract! user, :id, :provider, :uid, :user_name, :user_nickname, :image_url, :created_at, :updated_at
json.url user_url(user, format: :json)
