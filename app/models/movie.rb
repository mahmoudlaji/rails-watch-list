class Movie < ApplicationRecord

  # validation de donn specf
  validates :title, presence: true, uniqueness: true

# relation de table de db
  has_many :bookmarks, dependent: :destroy
end
