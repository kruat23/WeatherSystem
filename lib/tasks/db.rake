namespace :db do
  task populate: :environment do

    Role.create(name: :admin)
    Role.create(name: :client)

    user1 = User.create(username: 'ADMIN',
                        email: 'admin@admin.com',
                        password: 'makkama25',
                        password_confirmation: 'makkama25')
    user1.add_role(:admin)

    user2 = User.create(username: 'kruat',
                        email: 'zsoltkovacs96@citromail.hu',
                        password: 'makkama25',
                        password_confirmation: 'makkama25')
    user2.add_role(:client)

  end

end
