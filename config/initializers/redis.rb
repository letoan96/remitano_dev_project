if ENV['REDISCLOUD_URL']
  $redis = Redis.new(url: ENV['REDISTOGO_URL'])
end

