class DateSpot < ApplicationRecord
  #submitとのアソシエーション(多:1)
  belongs_to :submit,optional: true

  #categoryとのアソシエーション(1:1)
  belongs_to :category, dependent: :destroy
  accepts_nested_attributes_for :category

  mount_uploader :image, AvatarUploader
end
