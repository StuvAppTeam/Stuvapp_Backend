class CreateRequestBlackboards < ActiveRecord::Migration
  def change
    create_table :request_blackboards do |t|
      t.string :title
      t.string :description
      t.float :totalPrice
      t.integer :user_id
      t.integer :category_id
      t.boolean :condition

      t.timestamps null: false
    end
  end
end
