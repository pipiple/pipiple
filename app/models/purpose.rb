class Purpose < ApplicationRecord
  has_many :submits, :through => :submit_purposes
  has_many :submit_purposes, dependent: :destroy

end
