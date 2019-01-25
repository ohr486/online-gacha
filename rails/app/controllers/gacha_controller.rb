class GachaController < ApplicationController
  def pre
  end

  def effect
    Result.do_gacha(current_user)
  end

  def result
    result = Result.find_by(user_id: current_user.id)
    @reward = Reward.find(result.reward_id)
  end

  def accept
  end
end
