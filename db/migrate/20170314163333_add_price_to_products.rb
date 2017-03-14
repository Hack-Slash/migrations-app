class AddPriceToProducts < ActiveRecord::Migration[5.0]
  def change
    # add code to add a column
    add_column :products, :price, :integer
  end
end
