json.extract! daily, :id, :daily_id, :uploader_id, :location_id, :month, :day, :min, :max, :precipitation, :storm, :shower, :rain, :fog, :sleet, :snow, :snowshower, :boolean, :snow_cover, :note, :created_at, :updated_at
json.url daily_url(daily, format: :json)
