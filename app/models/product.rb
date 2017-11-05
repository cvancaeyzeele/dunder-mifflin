class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items

  validates :name, :description, :price, presence: true
  validates_associated :category
end
