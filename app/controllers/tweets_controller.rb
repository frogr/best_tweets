class TweetsController < BaseController
  def a_tweet
    render :a_tweet, :noun => :winking
  end

  def tweet_1
    render :tweet, :obj => FileModel.find(1)
  end

  def show
    @tweet = FileModel.find(params["id"])
    @ua = request.user_agent
  end

  def index
    @tweets = FileModel.all
  end

  def create
    max_id = FileModel.all.map(&:id).max || 0
    new_id = max_id + 1

    new_hash = get_form_params
    FileModel.create(new_hash, new_id)
    redirect_to("/tweets/index")
  end

  def new
    render :new
  end

  def update_tweet
    body = @env["rack.input"].read
    new_hash = MultiJson.load(body)
    tweet = FileModel.find(get_id_from_rack)
    tweet.update(new_hash)
  end

  def austin_tweets
    tweets = FileModel.where(:author => "Austin")
    render :tweets, :obj => tweets
  end
end