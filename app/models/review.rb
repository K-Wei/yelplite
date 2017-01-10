class Review < ApplicationRecord
  mount_uploader :photos, PhotoUploader

  # Direct associations

  belongs_to :user

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
