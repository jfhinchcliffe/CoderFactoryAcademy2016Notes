class User < ApplicationRecord
  has_one :profile
  has_many :photos
  accepts_nested_attributes_for :profile
end
