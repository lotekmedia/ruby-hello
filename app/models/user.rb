class User < ApplicationRecord
    has_many(:microposts)
    before_save { self.email = email.downcase }
    validates(:name, presence: true, length: { maximum: 50 })
    validates(:email, presence: true, length: { maximum: 255}, uniqueness: {case_sensitive: false})
    has_secure_password
end
