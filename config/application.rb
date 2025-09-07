require "tinyrails"

module BestTweets
  class Application < Tinyrails::Application
    $LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
    require "tweets_controller"
  end
end