class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  IDENTIFIERS = ["image/upload/v1573664822/kkcthhtds0p41qkouxnw.jpg", "image/upload/v1573664823/i7xibcntrx604wrhzpau.jpg"]

  def remove!
    # ap self.identifier
    # ap IDENTIFIERS
    super unless IDENTIFIERS.map {|id| id.split('/').last }.include?(self.identifier.split('/').last)
  end
end

