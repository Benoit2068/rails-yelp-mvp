class RemoveAdressColumnToRestaurant < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :adress
    add_column :restaurants, :address, :string
  end
end
