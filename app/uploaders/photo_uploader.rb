class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  IDENTIFIERS = ["image/upload/v1573664822/kkcthhtds0p41qkouxnw.jpg", "image/upload/v1573664823/i7xibcntrx604wrhzpau.jpg", "image/upload/v1573666854/osycup09ijhu6r7ennif.jpg", "image/upload/v1573666856/jabgw3z7lxpzj21ejlsx.jpg", "image/upload/v1573666857/kf7qzgexsoct5b7bma22.jpg", "image/upload/v1573666858/art4mcajntvjvnygb7mg.jpg"]

  def remove!
    # ap self.identifier
    # ap IDENTIFIERS
    super unless IDENTIFIERS.map {|id| id.split('/').last }.include?(self.identifier.split('/').last)
  end
end

