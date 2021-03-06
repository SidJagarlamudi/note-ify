class User < ApplicationRecord
  has_secure_password
  validates :password_confirmation, presence: true
  validates_uniqueness_of :username
  has_many :notes
end
