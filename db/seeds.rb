user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

City.create!(name: 'Radom', short_name: 'Ra')
City.create!(name: 'Sosnowiec', short_name: 'Ni')
City.create!(name: 'Krakow', short_name: 'Kr')
City.create!(name: 'Poznan', short_name: 'Po')
City.create!(name: 'Warszawa', short_name: 'Wm')
City.create!(name: 'Gdansk', short_name: 'Gd')
City.create!(name: 'Katowice', short_name: 'Kb')
