class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.integer :square_footage
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true


      t.timestamps
    end
  end
end
