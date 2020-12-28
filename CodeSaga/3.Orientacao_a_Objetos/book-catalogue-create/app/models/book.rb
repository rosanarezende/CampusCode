class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :publication_year, presence: true
  validates :abstract, presence: true
  validates :genre, presence: true
end
