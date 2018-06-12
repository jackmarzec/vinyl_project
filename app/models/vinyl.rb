class Vinyl < ApplicationRecord
  validates :title, presence: true
  validates :date, presence: true, length: { minimum: 8, maximum: 8 }
end