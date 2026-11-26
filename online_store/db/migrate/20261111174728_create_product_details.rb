class CreateProductDetails < ActiveRecord::Migration[8.1]
  def change
    create_table :product_details do |t|
      t.string :color
      t.decimal :weight
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
