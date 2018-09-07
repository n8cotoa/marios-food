class Product < ActiveRecord::Base
  validates :name, :cost, :origin_country, :presence => true
  validates :cost,  numericality: { only_integer: true }
  has_many :reviews
end
