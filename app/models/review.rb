class Review < ActiveRecord::Base
  validates :author, :content_body, :rating, :presence => true
  validates :rating,  numericality: { only_integer: true, greater_than: 0, less_than: 6 }
  validates :content_body, length: {in: 50..250}
  belongs_to :product
end
