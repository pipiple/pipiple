class Submit < ApplicationRecord
  validate :add_error_plans

  #userとのアソシエーション(多:1)
  belongs_to :user

  #date_spotとのアソシエーション(1:多)
  has_many :date_spots, dependent: :destroy
  accepts_nested_attributes_for :date_spots, allow_destroy: true
  validates :date_spots, length: { minimum: 1, maximum: 5 }

  has_many :submit_purposes, dependent: :destroy
  has_many :purposes, :through => :submit_purposes
  accepts_nested_attributes_for :submit_purposes, allow_destroy: true

  validates :name, presence: true, length: { maximum: 30 }
  validates :area, presence: true
  validates :mood, length: { maximum: 30 }
  validates :price, presence: true
  validates :overview, presence: true, length: { maximum: 80 }

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
