require 'faker'

Post.destroy_all
Tag.destroy_all

5.times do 
	Tag.create!(name: Faker::Music.instrument)
end

10.times do 
	Post.create!(created_at: Faker::Time.between(2.days.ago, Date.today, :all), title: Faker::RockBand.name, body: Faker::Hipster.paragraph)
end

15.times do 
	TaggedPost.create!(tag_id: Tag.all.sample.id, post_id: Post.all.sample.id)
end