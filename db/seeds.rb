require 'faker'

Post.destroy_all

10.times do 
	Post.create!(created_at: Faker::Time.between(2.days.ago, Date.today, :all), title: Faker::RockBand.name, body: Faker::Hipster.paragraph)
end

