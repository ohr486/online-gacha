class Result < ApplicationRecord
  has_one :reward

  def self.do_gacha(user)
    if Result.exists?(user_id: user.id)
      @result = Result.find_by(user_id: user.id)
    else
      reward = Reward.choose
      @result = Result.create!(reward_id: reward.id, user_id: user.id)
    end
    @reward = Reward.find(@result.reward_id)
  end
end
