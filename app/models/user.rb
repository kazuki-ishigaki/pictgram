class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  
  validates :name, presence: true
  validates :name, length: {maximum: 15}
  
  validates :email, presence: true
  validates :email, format: { with: VALID_EMAIL_REGEX }
  
  validates :password, length: {in: 8..32}
  validates :password, presence: true
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  has_secure_password
end
