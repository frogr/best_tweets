class TweetsController < BaseController
  def a_tweet
    render :a_tweet, :noun => :winking
  end

  def tweet_1
    render :tweet, :obj => FileModel.find(1)
  end

  def index
    render :index, :tweets => FileModel.all
  end

  def update_tweet
    body = @env["rack.input"].read
    new_hash = MultiJson.load(body)
    tweet = FileModel.find(get_id_from_rack)
    tweet.update(new_hash)
    "Tweet Updated!"
  end
end