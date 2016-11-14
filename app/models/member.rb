class Member < ApplicationRecord

  has_attached_file :profile_image, :styles => { medium: "300x300#", thumb: "240x240>" }, :default_url => ":style/sample.jpg"
  validates_attachment :profile_image,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
