class DateSpot < ApplicationRecord
  #submitとのアソシエーション(多:1)
  belongs_to :submit,optional: true

  mount_uploader :image, AvatarUploader
end
