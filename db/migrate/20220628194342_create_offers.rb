class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :status
      t.datetime :expire_at
      t.references :price, null: false, foreign_key: true
      t.references :flat, null: false, foreign_key: true


      t.timestamps
    end
  end
end
