class Submit < ApplicationRecord
  validate :add_error_plans

  #userとのアソシエーション(多:1)
  belongs_to :user

  #date_spotとのアソシエーション(1:多)
  has_many :date_spots
  accepts_nested_attributes_for :date_spots

  has_many :submit_purposes, dependent: :destroy
  has_many :purposes, :through => :submit_purposes
  mount_uploader :lunch_image, AvatarUploader
  mount_uploader :afternoon_image, AvatarUploader
  mount_uploader :evening_image, AvatarUploader
  mount_uploader :dinner_image, AvatarUploader

  validates :area, presence: true
  validates :price, presence: true
  def add_error_plans
    # nameが空のときにエラーメッセージを追加する
    if area.empty?
      errors.add(:area, "に関係するエラーを追加")
      errors[:base] << "モデル全体に関係するエラーを追加"
    end
  end

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
