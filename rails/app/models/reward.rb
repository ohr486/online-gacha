class Reward < ApplicationRecord
  belongs_to :result

  def self.choose
    @reward = Reward.all.shuffle.first
  end
end
