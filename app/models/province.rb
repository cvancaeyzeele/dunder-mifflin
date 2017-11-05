class Province < ApplicationRecord
  has_many :addresses

  validates :name, :pst, :gst, :hst, presence: true
end
