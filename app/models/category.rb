class Category < ApplicationRecord
  #date_spotとのアソシエーション(1:1)
  has_one :date_spot
end
