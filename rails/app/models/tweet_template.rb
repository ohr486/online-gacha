class TweetTemplate < ApplicationRecord
  def self.retweet_target
    retweet_id = self.find_by(tweet_day: Date.today)&.link
    if retweet_id
      retweet_id.to_i
    else
      default_tweet_id
    end
  end

  def self.random_retweet_target
    retweet_id = self.where(tweet_day: Date.today).shuffle.first&.link
    if retweet_id
      retweet_id.to_i
    else
      default_tweet_id
    end
  end

  def self.default_tweet_id
    # https://twitter.com/DRECOM_TECH/status/1200248284566061056
    1200248284566061056
  end
end
