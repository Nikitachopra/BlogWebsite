class Article < ApplicationRecord

	mount_uploader :image, AvatarUploader
	has_many :comments
	has_many :user_comments

	scope :non_featured, -> { where(featured: false) }
	scope :featured, -> { where(featured: true) }
end
