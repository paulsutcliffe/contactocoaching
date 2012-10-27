class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.string :last_name
      t.string :cell
      t.string :office
      t.string :email
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
