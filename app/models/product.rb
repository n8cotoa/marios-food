class Product < ActiveRecord::Base
  validates :name, :cost, :origin_country, :presence => true
  validates :cost,  numericality: { only_integer: true }
  has_many :reviews

  scope(:top_reviewed, -> do
    self.joins(:reviews)
    .select("products.*, count(reviews.id) as scount")
    .group("products.id")
    .order("scount DESC")
    end)
end
