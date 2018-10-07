class Article < ApplicationRecord

	mount_uploader :image, AvatarUploader
	has_many :comments
end
