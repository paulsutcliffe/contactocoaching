class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :client_id

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end