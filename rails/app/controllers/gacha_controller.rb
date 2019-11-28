class GachaController < ApplicationController
  def pre
  end

  def effect
    Result.do_gacha(current_user)

    # follow twitter acc
    #twitter_client.follow(ENV["FOLLOW_ACC"])

    # retweet
    # TIDの最新記事をretweet
  end

  def result
    result = Result.find_by(user_id: current_user.id)
    @reward = Reward.find(result.reward_id)
  end

  def accept
  end

  private

  def twitter_client
    Twitter::REST::Client.new(
      access_token: current_user.token,
      access_token_secret: current_user.secret,
      consumer_key: ENV["APP_ID"],
      consumer_secret: ENV["APP_SECRET"]
    )
  end
end
