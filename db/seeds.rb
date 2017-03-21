require 'faker'

Post.destroy_all
# Category.destroy_all

# 4.times do 
# 	Category.create!(name: Faker::Lorem.word)
# end

10.times do 
	Post.create!(post_date: Faker::Time.between(2.days.ago, Date.today, :all), title: Faker::RockBand.name, body: Faker::Hipster.paragraph, genre: Faker::Lorem.word, category_id: Category.all.sample.id)
end

