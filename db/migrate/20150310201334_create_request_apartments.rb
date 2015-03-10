class CreateRequestApartments < ActiveRecord::Migration
  def change
    create_table :request_apartments do |t|
      t.string :title
      t.string :description
      t.float :totalPrice
      t.integer :user_id
      t.boolean :furnished
      t.string :type
      t.integer :size
      t.string :phase
      t.string :city
      t.integer :zipcode

      t.timestamps null: false
    end
  end
end
