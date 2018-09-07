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

  scope(:three_recent, -> { order(created_at: :desc).limit(3) })

  scope(:made_in_usa, -> {where(origin_country: "USA")})

end
