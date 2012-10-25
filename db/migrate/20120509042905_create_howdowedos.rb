class CreateHowdowedos < ActiveRecord::Migration
  def self.up
    create_table :howdowedos do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :howdowedos
  end
end
