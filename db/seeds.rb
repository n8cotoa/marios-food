Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create(name: Faker::Food.dish, cost: Faker::Number.decimal(2).to_i, origin_country: Faker::Witcher.location)
end

Product.all.each do |product|
  5.times do |index|
    char_num = rand(50..250)
    product.reviews.create(author: Faker::Name.first_name, content_body: Faker::Lorem.paragraph_by_chars(char_num, false), rating: Faker::Number.between(1, 5), product_id: product.id)
  end
end
