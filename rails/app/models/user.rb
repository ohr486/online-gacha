class User < ApplicationRecord
  has_one :result

  def self.find_or_create_from_auth(auth)
    provider = auth[:provider]
    uid = auth[:uid]
    user_name = auth[:info][:name]
    user_nickname = auth[:info][:nickname]
    image_url = auth[:info][:image]
    token = auth[:credentials][:token]
    secret = auth[:credentials][:secret]

    self.find_or_create_by(provider: provider, uid: uid) do |user|
      user.user_name = user_name
      user.user_nickname = user_nickname
      user.image_url = image_url
      user.token = token
      user.secret = secret
    end
  end
end
