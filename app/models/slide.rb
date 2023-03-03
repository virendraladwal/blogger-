class Slide < ApplicationRecord
    mount_uploader :image, AvatarUploader
end
