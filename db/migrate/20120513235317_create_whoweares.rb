class CreateWhoweares < ActiveRecord::Migration
  def self.up
    create_table :whoweares do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :whoweares
  end
end
