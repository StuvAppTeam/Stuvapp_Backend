class CreateOfferBlackboards < ActiveRecord::Migration
  def change
    create_table :offer_blackboards do |t|
      t.string :title
      t.string :description
      t.float :totalPrice
      t.integer :image_id
      t.string :street
      t.string :city
      t.integer :zipcode
      t.integer :user_id
      t.integer :category_id
      t.boolean :condition

      t.timestamps null: false
    end
  end
end
