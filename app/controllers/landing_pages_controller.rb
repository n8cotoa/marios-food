class LandingPagesController < ApplicationController
  def index
    @top_reviewed_product = Product.top_reviewed[0]
    @newest_products = Product.three_recent
  end
end
