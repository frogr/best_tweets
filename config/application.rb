require "tinyrails"
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module BestTweets
  class Application < Tinyrails::Application
  end
end