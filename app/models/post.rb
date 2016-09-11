class Post < ActiveRecord::Base
  belongs_to :bulletin
  belongs_to :user
  mount_uploader :picture, PictureUploader

end
