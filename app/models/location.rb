class Location < ApplicationRecord
  belongs_to :uploader
  belongs_to :daily

  validates :location_id, :city, :county, :country, presence: { message: "must be given" }
end
