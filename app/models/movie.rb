class Movie < ApplicationRecord

  # validation de donn specf
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true


# relation de table de db
  has_many :bookmarks
end
