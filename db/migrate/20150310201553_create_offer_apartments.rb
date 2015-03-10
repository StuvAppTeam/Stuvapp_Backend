class CreateOfferApartments < ActiveRecord::Migration
  def change
    create_table :offer_apartments do |t|
      t.string :title
      t.string :description
      t.float :totalPrice
      t.integer :image_id
      t.string :street
      t.string :city
      t.integer :zipcode
      t.integer :user_id
      t.integer :size
      t.float :rent
      t.float :additionalCost
      t.string :phase
      t.float :deposit
      t.string :type
      t.date :moveIn
      t.boolean :furnished
      t.boolean :internet
      t.string :other
      t.string :parking
      t.integer :rooms
      t.boolean :smoking

      t.timestamps null: false
    end
  end
end
