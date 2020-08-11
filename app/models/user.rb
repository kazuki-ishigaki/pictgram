class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length: {maximum: 15}
  
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, presence: true
  validates :email, format: { with: VALID_EMAIL_REGEX }
  
  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  validates :password, length: {in: 8..32}
  validates :password, presence: true
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  has_secure_password
end
