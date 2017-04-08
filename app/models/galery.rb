class Galery < ActiveRecord::Base
	attr_accessor :image

  	belongs_to :company
	mount_uploader :image, ImageUploader
end
