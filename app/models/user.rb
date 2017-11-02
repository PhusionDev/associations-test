class User < ApplicationRecord
  has_one :profile
  has_many :events
  has_many :event_applications
  accepts_nested_attributes_for :profile
end
