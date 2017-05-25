class Track < ApplicationRecord
  belongs_to :serie
  belongs_to :category
  has_many :selections
  has_many :lists, through: :selections
  mount_uploader :audio_file, AudiofileUploader
end
