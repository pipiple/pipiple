class User < ApplicationRecord
  #アソシエーション(1:多)
  has_many :submits
  accepts_nested_attributes_for :submits

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, presence: true, length: { maximum: 10 } #マイページ用追記
  validates :sex, presence: true #マイページ用追記
  validates :age, presence: true #マイページ用追記
end
