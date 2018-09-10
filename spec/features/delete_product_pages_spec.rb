require 'rails_helper'

describe 'the product deletion process' do
  it 'will delete a product from the site' do
    visit products_path
    click_on "Add New Product"
    fill_in 'Name', :with => 'Product to Delete'
    fill_in 'Cost', :with => 5
    fill_in 'Origin country', :with => 'Earth'
    click_on 'Create Product'
    click_on "Delete Product to Delete"
    expect(page).to have_no_content("Product to Delete")
  end
end
