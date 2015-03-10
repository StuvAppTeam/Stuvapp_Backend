class CreateMages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :path

      t.timestamps null: false
    end
  end
end
