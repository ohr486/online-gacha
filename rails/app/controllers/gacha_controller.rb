class GachaController < ApplicationController
  def pre
  end

  def effect
  end

  def result
    @reward = Reward.all.shuffle.first
  end

  def accept
    @reward = Reward.all.shuffle.first
  end
end
