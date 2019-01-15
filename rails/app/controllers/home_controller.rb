class HomeController < ApplicationController
  def index
    @rewards = Reward.all
  end

  def result
    @reward = Reward.all.shuffle.first
  end
end
