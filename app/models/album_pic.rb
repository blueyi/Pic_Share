class AlbumPic < ActiveRecord::Base
  mount_uploader :pic, PicUploader
  belongs_to :album
end
