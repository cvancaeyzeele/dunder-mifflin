class Address < ApplicationRecord
  belongs_to :province
  belongs_to :user
  has_many :orders

  validates :address, :city, :postalcode, presence: true
  validates_associated :province, :user
end
