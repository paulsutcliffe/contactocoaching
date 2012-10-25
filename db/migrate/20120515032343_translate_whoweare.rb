class TranslateWhoweare < ActiveRecord::Migration
  def self.up
      Whoweare.create_translation_table!({
        :title => :string,
        :description => :text
      }, {
        :migrate_data => true
      })
    end
    def self.down
      Whoweare.drop_translation_table! :migrate_data => true
    end
end
