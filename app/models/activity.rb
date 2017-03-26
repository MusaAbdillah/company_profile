class Activity < ActiveRecord::Base
  belongs_to :company
  has_attached_file :image, styles: { large: "500x250", medium: "300x300", thumb: "100x100" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
