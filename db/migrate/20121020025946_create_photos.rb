class CreatePhotos < ActiveRecord::Migration
  def up
    create_table :photos do |t|
      t.binary :raw
      t.timestamps
    end
  end

  def down
    drop_table :photos
  end
end
