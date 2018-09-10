require 'rails_helper'

describe 'Add review process' do
  it ' will add a review to a product' do
    Product.create(name: 'Test', cost: 14, origin_country: 'USA')
    visit products_path
    click_on "Test"
    click_on "Add Review"
    fill_in 'Author', :with => 'Test Author'
    fill_in 'Content body', :with => 'This is a test paragraph, this is a test review for the test product, hopefully this is over the character limit now.'
    fill_in "Rating", :with => 4
    click_on 'Create Review'
    expect(page).to have_content("Test Author")
  end

  it 'will return an error if form is not filled out correctly' do
    Product.create(name: 'Test', cost: 14, origin_country: 'USA')
    visit products_path
    click_on "Test"
    click_on "Add Review"
    click_on 'Create Review'
    expect(page).to have_content("Review not added")
  end
end
