class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false, inclusion: { in: [0, 1, 2, 3, 4, 5] }
      t.text :content, null: false
      t.references :restaurants, null: false, foreign_key: true

      t.timestamps
    end
  end
end
