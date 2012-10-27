class Photo < ActiveRecord::Base
  belongs_to :client
  has_attached_file :photo,
                    :styles => { :medium => "500x500#", :thumb => "100x50#" }
end
