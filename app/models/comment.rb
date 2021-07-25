class Comment < ApplicationRecord
  belongs_to :list

  validates :opinion, presence: true, length: { minimum: 6, maximum: 255 }
end
