class PhotosController < InheritedResources::Base
  belongs_to :client
  def create
    create! { client_photos_path(@photo.client) }
  end
end
