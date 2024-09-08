class Sefer < ApplicationRecord
  validates :name, presence: true
  validates :author, presence: true
end
