class Category < ApplicationRecord
  #date_spotとのアソシエーション(1:1)
  belongs_to :date_spot
end
