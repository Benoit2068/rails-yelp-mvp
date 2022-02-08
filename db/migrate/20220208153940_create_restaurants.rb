class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :adress, null: false
      t.string :category, null: false
      t.string :phone_number, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

      t.timestamps
    end
  end
end
