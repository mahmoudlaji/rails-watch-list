class List < ApplicationRecord
  # validation de donn specf
  validates :name, presence: true, uniqueness: true


#  relation de table de db
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end
