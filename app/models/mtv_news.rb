class MtvNews < ApplicationRecord

	def self.news_feed
		response = HTTParty.get("https://newsapi.org/v1/articles?source=mtv-news&sortBy=top&apiKey=d29466b3c8034fbab11724b58251722f")

		top_articles = response["articles"]
	end

end
