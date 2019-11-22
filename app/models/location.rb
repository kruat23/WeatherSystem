class Location < ApplicationRecord
  belongs_to :uploader
  belongs_to :daily
end
