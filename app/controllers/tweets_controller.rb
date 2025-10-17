class TweetsController < Tinyrails::Controller
  def a_tweet
    render :a_tweet, :noun => :winking
  end

  def tweet_1
    tweet_1 = FileModel.find(1)
    render :tweet, :obj => tweet_1
  end

  def index
    tweets = FileModel.all
    render :index, :tweets => tweets
  end
end