class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :list, uniqueness: { scope: :movie }
  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6 }
end
