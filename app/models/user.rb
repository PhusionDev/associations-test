class User < ApplicationRecord
  has_secure_password

  has_one :profile
  has_many :events
  has_many :event_applications
  accepts_nested_attributes_for :profile

  validates :email, confirmation: true
  validates :password, confirmation: true
end
