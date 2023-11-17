class List < ApplicationRecord
  # validation de donn specf
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
#  relation de table de db
has_many :bookmarks, dependent: :destroy
has_many :movies, through: :bookmarks, dependent: :destroy
has_many :reviews, dependent: :destroy
end
