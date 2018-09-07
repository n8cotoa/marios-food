class LandingPagesController < ApplicationController
  def index
    @top_reviewed_product = Product.top_reviewed[0]
  end
end
