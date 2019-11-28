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

    daily1 = Daily.create(uploader_id: user1.username, location_id: "Szeged", month:"January", day: 1,
                          min: -0.1, max: 0.1, precipitation: 0.0, storm: false, shower: false,
                          rain: false, fog: true, sleet: false, snow: false, snow_shower: false,
                          snow_cover: 0, note: "test")
    daily2 = Daily.create(uploader_id: user2.username, location_id: "Szeged", month:"January", day: 2,
                          min: -0.5, max: 0.0, precipitation: 0.1, storm: false, shower: false,
                          rain: false, fog: true, sleet: true, snow: false, snow_shower: false,
                          snow_cover: 0, note: "test")

  end

end
