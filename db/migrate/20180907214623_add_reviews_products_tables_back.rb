class AddReviewsProductsTablesBack < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :cost, :integer
      t.column :origin_country, :string

      t.timestamps
    end
    create_table :reviews do |t|
      t.column :author, :string
      t.column :content_body, :string
      t.column :rating, :integer
      t.column :product_id, :integer

      t.timestamps
    end
  end
end
