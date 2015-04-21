namespace :refresh do
  desc "Create all new users, projects, tasks, comments, and memberships && associate it them properly"
  task :tables => :environment do
    require 'faker'

      Album.destroy_all
      Artist.destroy_all

      20.times do |artist|
        Artist.create(name: Faker::Name.first_name + Faker::Name.last_name)
      end
      artist_id_array = Artist.pluck(:id)
      puts "#{Artist.count} artists generated. Artist_id_array: #{artist_id_array}"


      50.times do |album|
        Album.create(title: Faker::Hacker.say_something_smart, artist_id: artist_id_array.sample)
      end
      puts "#{Albums.count} albums generated."

  end
end
