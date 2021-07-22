class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, -> { distinct }, through: :bookmarks

  validates :name, presence: true, uniqueness: true
end
