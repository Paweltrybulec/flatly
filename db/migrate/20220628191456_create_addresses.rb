class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :building_number
      t.integer :flat_number
      t.string :post_code
      t.string :city
      t.string :country
      t.decimal :lat
      t.decimal :lng
      t.text :description
      t.integer :floor

      t.timestamps
    end
  end
end
