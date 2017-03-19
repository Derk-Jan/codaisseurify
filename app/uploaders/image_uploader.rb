# encoding: utf-8

cclass ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
