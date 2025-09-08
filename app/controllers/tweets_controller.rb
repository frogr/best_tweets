class TweetsController < Tinyrails::Controller
  def a_tweet
    render :a_tweet, :noun => :winking
  end
end