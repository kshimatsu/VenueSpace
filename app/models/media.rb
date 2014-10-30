class Media < ActiveRecord::Base
  belongs_to :venue
  mount_uploader :file_name, MediaUploader
end
