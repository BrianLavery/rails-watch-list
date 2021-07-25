class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, -> { distinct }, through: :bookmarks
  has_one_attached :photo

  validates :title, :overview, presence: true
end
