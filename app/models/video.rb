class Video < ActiveRecord::Base
  belongs_to :show
  mount_uploader :file, VideoUploader
end
