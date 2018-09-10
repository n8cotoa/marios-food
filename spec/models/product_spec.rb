require 'rails_helper'

describe Product do
  it { should have_many :reviews }
  it { should validate_presence_of :name}
  it { should validate_presence_of :cost}
  it { should validate_presence_of :origin_country}
  it { should validate_numericality_of :cost}

  describe '#get_avg_rating' do
    it 'will take the products reviews and avg their ratings' do
      product = Product.create(name: 'Test Product', cost: 24, origin_country: 'USA')
      product.reviews.create(author: 'Test 1', content_body: 'This is a test paragraph, this is a test review for the test product, hopefully this is over the character limit now.', rating: 3, product_id: product.id)
      product.reviews.create(author: 'Test 2', content_body: 'This is a test paragraph, this is a test review for the test product, hopefully this is over the character limit now.', rating: 5, product_id: product.id)
      expect(product.get_avg_rating).to equal(4)
    end
  end
end
