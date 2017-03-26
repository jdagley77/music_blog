require 'faker'

Post.destroy_all
Tag.destroy_all

TAGS = ["Blues", "Classical", "Country", "Electronic", "International", "Jazz", "Pop", "Reggae"]

TAGS.each { |tag| Tag.create!(name: tag) }

10.times do 
	Post.create!(created_at: Faker::Time.between(2.days.ago, Date.today, :all), title: Faker::RockBand.name, body: Faker::Hipster.paragraph)
end

15.times do 
	TaggedPost.create!(tag_id: Tag.all.sample.id, post_id: Post.all.sample.id)
end