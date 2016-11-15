class Member < ApplicationRecord

  has_attached_file :profile_image, :styles => { medium: "300x300#", thumb: "240x240>" }, :default_url => ":style/sample.jpg"
  validates_attachment_content_type :profile_image, :content_type => /\Aimage\/.*\Z/

end
