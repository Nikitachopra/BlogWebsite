class Article < ApplicationRecord

	mount_uploader :image, AvatarUploader
end
