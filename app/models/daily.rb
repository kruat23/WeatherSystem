class Daily < ApplicationRecord
  has_many :locations
  has_many :uploaders, through: :locations
end
