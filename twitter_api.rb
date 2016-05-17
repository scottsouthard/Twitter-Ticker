require 'twitter'

# Get all tweets of a user
# def collect_with_max_id(collection=[], max_id=nil, &block)
#   response = yield(max_id)
#   collection += response
#   response.empty? ? collection.flatten : collect_with_max_id(collection, response.last.id - 1, &block)
# end

# def client.get_all_tweets(user)
#   collect_with_max_id do |max_id|
#     options = {count: 200, include_rts: true}
#     options[:max_id] = max_id unless max_id.nil?
#     user_timeline(user, options)
#   end
# end


# client.search("to:berniesanders president", result_type: "recent").take(3).each do |tweet|
#   puts tweet.text
# end


# client.search("from:swinginparty", result_type: "recent").take(10).each do |tweet|
#   puts tweet.text
# end


# tim = client.user('swinginparty')
# tweets = client.get_all_tweets('swinginparty')
# tweets.each do |tweet|
#   puts tweet.text
# end
# p tim.tweet.text
client = Twitter::Streaming::Client.new do |config|
  config.consumer_key    = "GGKVdpMy5vlJpDINPhVdvnn86"
  config.consumer_secret = "MhhbnwsAQCIjHw77TEiWMW2BwHc6uXa0GEICrVdyZB7jP8Od93"
  config.access_token        = "254634523-gxusfftCjW45Q9Lc3p39voL302Eo5eiSgBM5wXyl"
  config.access_token_secret = "gFmOTf7V5jIY3titcdZqvFcoNvjquykncpYz9JxwAXv6o"
end

client.filter(options = {track: ""}) do |tweet|
  puts tweet.text
end
# locations: "-87.78,41.7,-87.53,42.0"
# client.site("swinginparty") do |object|
#   puts object.text if object.is_a?(Twitter::Tweet)
# end

