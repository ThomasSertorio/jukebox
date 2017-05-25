class List < ApplicationRecord
  belongs_to :user
  has_many :selections
  has_many :tracks, through: :selections
end
