class DateSpot < ApplicationRecord
  #submitとのアソシエーション(多:1)
  belongs_to :submit

  #categoryとのアソシエーション(1:1)
  has_one :category
end
