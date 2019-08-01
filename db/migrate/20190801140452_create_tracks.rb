class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :string
      t.string :album
      t.string :string
      t.string :artist
      t.string :string
      t.integer :duration
      t.integer :size
      t.string :price
      t.string :float

      t.timestamps
    end
  end
end
