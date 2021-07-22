class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, -> { distinct }, through: :bookmarks

  validates :title, :overview, presence: true
end
