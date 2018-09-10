require 'rails_helper'

describe 'Update product process' do
  it 'will update the products information' do
    Product.create(name: 'Test', cost: 14, origin_country: 'USA')
    visit products_path
    click_on "Test"
    click_on "Update Test"
    fill_in 'Name', :with => 'Test Product'
    fill_in 'Cost', :with => 5
    fill_in 'Origin country', :with => 'Earth'
    click_on 'Update Product'
    expect(page).to have_content("Test Product")
  end
end
