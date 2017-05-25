class Serie < ApplicationRecord
  belongs_to :author, optional: true
  has_many :tracks
end
