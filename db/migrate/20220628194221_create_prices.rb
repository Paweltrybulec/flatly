class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.decimal :lent_price
      t.decimal :rent_price
      t.decimal :media_price

      t.timestamps
    end
  end
end
