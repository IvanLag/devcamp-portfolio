module SocialTool
	def self.twitter_search
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
		  config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
		  config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
		  config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
		end



		begin
			client.search("#rails", result_type: 'recent').take(6).collect do |tweet|
				"#{tweet.user.screen_name}: #{tweet.text}"
			end
		rescue
			return ["Ruby on Rails: Rails World saw 29 speakers and 700+ Rails developers come to Amsterdam for 2 days of announcements, keynotes, talks, and one big birthday celebration. Sessions were recorded and will be published soon, but for now, here's a quick idea look back. ",
			        "Christopher Winslett: Ruby on Rails has an `Model.upsert` method relying on table constraints to throw errors.  It uses Postgres database constraints to throw errors on duplicate.",
			        "RubyOnRails.BA: Help you get reading the huge open souce libraries in Ruby and trace its source locations (from 15/12/2022)",
			        "Andreas C.: Thanks to Kent for this little tip to implement only once the ruby version.",
			        "Deanin: You can listen to the Rails devs about React being a waste if you're trying to start your own business. Just please don't be surprised if your first Ruby on Rails interview for your future job ends with a take home quiz about a React/Vue/Svelte/Angular/whatever.js + Rails app",
			        "RubyOnRails.BA: Turbo 8 is dropping TypeScript (from 08/09/2023)"
			    ]
		end
	end
end