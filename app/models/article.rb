class Article < ApplicationRecord

	mount_uploader :image, AvatarUploader
	has_many :comments
	has_many :user_comments
end
