class Uploader < ApplicationRecord
  has_many :locations
  has_many :dailies, through: :locations

  validates :uploader_id, :location_id, :nick_name, presence: { message: "must be given" }
end
