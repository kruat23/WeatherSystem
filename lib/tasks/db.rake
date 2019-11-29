namespace :db do
  task populate: :environment do

    Role.create(name: :admin)
    Role.create(name: :client)

    user1 = User.create(username: 'ADMIN', email: 'admin@admin.com',
                        password: 'makkama25', password_confirmation: 'makkama25')
    user1.add_role(:admin)

    user2 = User.create(username: 'kruat', email: 'zsoltkovacs96@citromail.hu',
                        password: 'makkama25', password_confirmation: 'makkama25')
    user2.add_role(:client)

    location1 = Location.create(location_id: 0, country: "Magyarorszag", county: "Csongrad", city:"Szeged")
    location2 = Location.create(location_id: 0, country: "Magyarorszag", county: "Bekes", city:"Bekescsaba")

    daily1 = Daily.create(uploader_id: user1.username, location_id: location1.city, month:"January", day: 1,
                          min: -0.1, max: 0.1, precipitation: 0.0, storm: false, shower: false,
                          rain: false, fog: true, sleet: false, snow: false, snow_shower: false,
                          snow_cover: 0, note: "test")
    daily2 = Daily.create(uploader_id: user2.username, location_id: location2.city, month:"January", day: 1,
                          min: -0.5, max: 0.0, precipitation: 0.1, storm: false, shower: false,
                          rain: false, fog: true, sleet: true, snow: false, snow_shower: false,
                          snow_cover: 0, note: "test")
    daily3 = Daily.create(uploader_id: user1.username, location_id: location1.city, month:"January", day: 2,
                          min: -0.3, max: 0.5, precipitation: 0.0, storm: false, shower: false,
                          rain: false, fog: true, sleet: false, snow: false, snow_shower: false,
                          snow_cover: 0, note: "")
    daily4 = Daily.create(uploader_id: user2.username, location_id: location2.city, month:"January", day: 2,
                          min: -1.1, max: 0.9, precipitation: 0.0, storm: false, shower: false,
                          rain: false, fog: true, sleet: false, snow: false, snow_shower: false,
                          snow_cover: 0, note: "")
    daily5 = Daily.create(uploader_id: user1.username, location_id: location1.city, month:"January", day: 3,
                          min: -2.4, max: 0.3, precipitation: 2.1, storm: false, shower: false,
                          rain: false, fog: false, sleet: false, snow: true, snow_shower: false,
                          snow_cover: 1, note: "")
    daily6 = Daily.create(uploader_id: user2.username, location_id: location2.city, month:"January", day: 3,
                          min: -1.7, max: 0.5, precipitation: 1.8, storm: false, shower: false,
                          rain: false, fog: false, sleet: false, snow: true, snow_shower: false,
                          snow_cover: 0, note: "")
    daily7 = Daily.create(uploader_id: user1.username, location_id: location1.city, month:"January", day: 4,
                          min: -0.4, max: 3.4, precipitation: 4.8, storm: false, shower: false,
                          rain: true, fog: false, sleet: false, snow: false, snow_shower: false,
                          snow_cover: 2, note: "")
    daily8 = Daily.create(uploader_id: user2.username, location_id: location2.city, month:"January", day: 4,
                          min: 0.1, max: 4.0, precipitation: 7.1, storm: false, shower: false,
                          rain: true, fog: false, sleet: false, snow: false, snow_shower: false,
                          snow_cover: 1, note: "")
    daily9 = Daily.create(uploader_id: user1.username, location_id: location1.city, month:"January", day: 5,
                          min: 2.3, max: 7.9, precipitation: 0.0, storm: false, shower: false,
                          rain: false, fog: false, sleet: false, snow: false, snow_shower: false,
                          snow_cover: 0, note: "")
    daily10 = Daily.create(uploader_id: user2.username, location_id: location2.city, month:"January", day: 5,
                          min: 1.9, max: 7.5, precipitation: 0.0, storm: false, shower: false,
                          rain: false, fog: false, sleet: false, snow: false, snow_shower: false,
                          snow_cover: 0, note: "")

  end

end
