class TwitterSearchServices

	def search_tweets(query)
		begin
			results = client.search("#{query}", result_type: "recent").take(3).collect
		rescue =>	e
			Rails.logger.warn "Error 12312312 #{e}"
		end
	end

	private

		def client
			Twitter::REST::Client.new do |config|
				config.consumer_key        = ENV["consumer_key"]
				config.consumer_secret     = ENV["consumer_secret"]
				config.access_token        = ENV["access_token"]
				config.access_token_secret = ENV["access_token_secret"]
			end
		end
end