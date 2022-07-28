class User < ApplicationRecord
  validates_presence_of :uid

  def self.from_omniauth(auth)
    find_or_create_by(uid: auth.uid) do |user|
      user.token = auth.credentials.token
      user.avatar = auth.info.image
    end
  end
end
