class Address < ApplicationRecord
  belongs_to :province
  belongs_to :user
  has_many :orders
end
