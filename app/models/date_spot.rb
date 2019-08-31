class DateSpot < ApplicationRecord
  #submitとのアソシエーション(多:1)
  belongs_to :submit,optional: true

  mount_uploader :image, AvatarUploader

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 100 }
  validates :image, presence: true
  validates :category, presence: true
  validates :url, presence: true

end
