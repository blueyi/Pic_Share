class CreateAlbumPics < ActiveRecord::Migration
  def change
    create_table :album_pics do |t|
      t.string :pic
      t.integer :album_id

      t.timestamps
    end
  end
end
