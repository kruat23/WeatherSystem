class Daily < ApplicationRecord
  has_many :locations
  has_many :uploaders, through: :locations

  validates :location_id, :month, :day, :min, :max, :precipitation, :snow_cover, presence: { message: "must be given" }

  validates :location_id, format: { with: /\A[a-zA-Z]+\z/,
                              message: "only allows letters" }
  validates :month, inclusion: { in: %w(January February March April May June July August September October November December
                                        Január Február Március Április Május Június Augusztus Szeptember Október November December),
                                message: "%{value} is not a valid month" }
  validates :day, length: { minimum: 1 }
  validates :day, length: { maximum: 2 }
end
