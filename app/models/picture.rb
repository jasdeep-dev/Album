class Picture < ApplicationRecord
	mount_uploaders :images, ImageUploader
	serialize :images
end
