class Daily < ApplicationRecord
  has_many :locations
  has_many :uploaders, through: :locations

  validates :location_id, :month, :day, :min, :max, :precipitation, :snow_cover, presence: { message: I18n.t('global.messages.must') }
  validates :day, length: { minimum: 1 }
  validates :day, length: { maximum: 2 }
end
