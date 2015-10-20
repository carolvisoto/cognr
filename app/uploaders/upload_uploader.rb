class UploadUploader < CarrierWave::Uploader::Base

  storage :file
  
  def store_dir (filename)
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end
