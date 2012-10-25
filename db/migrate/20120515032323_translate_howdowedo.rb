class TranslateHowdowedo < ActiveRecord::Migration
   def self.up
      Howdowedo.create_translation_table!({
        :title => :string,
        :description => :text
      }, {
        :migrate_data => true
      })
    end
    def self.down
      Howdowedo.drop_translation_table! :migrate_data => true
    end
end

