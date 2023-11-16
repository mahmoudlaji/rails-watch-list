class List < ApplicationRecord
  # validation de donn specf
  validates :name, presence: true, uniqueness: true


#  relation de table de db
  has_many :bookmarks, dependent: :destroy
end
