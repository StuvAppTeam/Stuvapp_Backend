class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :gender
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :password
      t.string :userName
      t.date :birthdate
      t.string :phone
      t.string :type

      t.timestamps null: false
    end
  end
end
