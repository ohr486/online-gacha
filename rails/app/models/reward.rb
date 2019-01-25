class Reward < ApplicationRecord
  def self.candidate
    candidate = []
    Reward.all.each do |r|
      if r.enable?
        candidate << {reward_id: r.id, count: r.possession_count}
      end
    end
    candidate
  end

  def self.choose
    base = []
    candidate.each do |c|
      c[:count].times do
        base << c[:reward_id]
      end
    end
    return nil if base.blank?
    rid = base.shuffle.first
    r = Reward.find(rid)
    r.distribute!
    r
  end

  def distribute!
    increment(:distributed_count)
    save!
  end

  def enable?
    possession_count > distributed_count
  end
end
