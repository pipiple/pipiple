class Submit < ApplicationRecord
  has_many :submit_purposes, dependent: :destroy
  has_many :purposes, :through => :submit_purposes
  mount_uploader :lunch_image, AvatarUploader
  mount_uploader :afternoon_image, AvatarUploader
  mount_uploader :evening_image, AvatarUploader
  mount_uploader :dinner_image, AvatarUploader

  def self.search(area,purpose,price)
     search = self.all
     search = search.where(area: area) if area != "0"
     search = search.where(price: price) if price != "0"
     result = []
     if purpose != "0"
       search.each do |s|
         if s.purposes.where(purpose: purpose).exists?
           result << s
         end
       end
       return result
     else
       return search
     end


   end
end
