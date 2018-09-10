require 'rails_helper'

describe 'Add product process' do
  it 'adds a new product to the database' do
    visit products_path
    click_link 'Add New Product'
    fill_in 'Name', :with => 'Test Product'
    fill_in 'Cost', :with => 5
    fill_in 'Origin country', :with => 'Earth'
    click_on 'Create Product'
    expect(page).to have_content 'Test Product'
  end

  it 'returns errors if fields left black' do
    visit products_path
    click_link 'Add New Product'
    click_on 'Create Product'
    expect(page).to have_content 'Product not added'
  end
end
