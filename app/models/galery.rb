class Galery < ActiveRecord::Base
  	belongs_to :company
	mount_uploader :image, ImageUploader
end
