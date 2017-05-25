class Author < ApplicationRecord
  has_many :series, dependent: :destroy
  has_many :tracks, through: :series
end
