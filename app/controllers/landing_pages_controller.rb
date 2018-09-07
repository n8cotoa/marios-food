class LandingPagesController < ApplicationController
  def index
    @products = Product.all
  end
end
