class Uploader < ApplicationRecord
  has_many :locations
  has_many :dailies, through: :locations
end
