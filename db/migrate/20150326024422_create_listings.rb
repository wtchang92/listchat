class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :listings, :users
  end
end
