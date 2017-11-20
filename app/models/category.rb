class Category < ApplicationRecord
  has_many :products

  validates :name, :description, presence: true, uniqueness: {case_sensitive: false}
end
