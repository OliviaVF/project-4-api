class User < ApplicationRecord
  has_secure_password validations: false

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true, confirmation: true
end
