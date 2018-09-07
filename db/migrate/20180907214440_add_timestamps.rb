class AddTimestamps < ActiveRecord::Migration[5.2]
  def change
    drop_table :products
    drop_table :reviews
  end
end
