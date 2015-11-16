class Project < ActiveRecord::Base
   belongs_to :user
   mount_uploader :image, CognrUploader
end
