class ImageUploader < CarrierWave::Uploader::Base
  
  #include CarrierWave::MiniMagick

  
  storage :file
  

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process resize_to_fit: [1080, 1080]

end
