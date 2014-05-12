class AlbumPic < ActiveRecord::Base
  WillPaginate.per_page = 5

  mount_uploader :pic, PicUploader
  belongs_to :album
end
