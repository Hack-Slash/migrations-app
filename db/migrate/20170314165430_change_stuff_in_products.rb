class ChangeStuffInProducts < ActiveRecord::Migration[5.0]
  def change
    # change description to text
    change_column :products, :description, :text
    # rename title to name
    rename_column :products, :title, :name
    # change price to decimal
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, precision: 9, scale: 2
  end
end
