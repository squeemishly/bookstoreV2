class CreateBookLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :book_locations do |t|
      t.references :book, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
