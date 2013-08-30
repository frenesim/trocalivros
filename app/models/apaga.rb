class Apaga < ActiveRecord::Base
  attr_accessible :image, :name
  mount_uploader :image, TestImagesUploader
end
