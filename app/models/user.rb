class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  # don't forget those if you use :attr_accessible (delete method and form caching method are provided by Carrierwave and used by RailsAdmin)
  attr_accessor :image, :image_cache, :remove_image
end
