class User < ApplicationRecord
  has_secure_password
  has_many :articles

  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}, presence: true, uniqueness: true
  validates :name, presence: true, length: {minimum: 2, maximum: 128  }

end
