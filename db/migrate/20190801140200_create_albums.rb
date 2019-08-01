class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :string
      t.string :artist
      t.string :string

      t.timestamps
    end
  end
end
