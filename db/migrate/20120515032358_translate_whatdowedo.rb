class TranslateWhatdowedo < ActiveRecord::Migration
  def self.up
      Whatdowedo.create_translation_table!({
        :title => :string,
        :description => :text
      }, {
        :migrate_data => true
      })
    end
    def self.down
      Whatdowedo.drop_translation_table! :migrate_data => true
    end
end
