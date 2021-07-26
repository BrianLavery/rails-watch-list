class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :movies, -> { distinct }, through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
end
