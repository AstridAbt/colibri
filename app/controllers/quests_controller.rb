class QuestsController < ApplicationController

  def index
    @quests = policy_scope(Quest)
    @level_1 = policy_scope(Quest).where(points: 100)
    @level_2 = policy_scope(Quest).where(points: 200)
    @level_3 = policy_scope(Quest).where(points: 400)
  end

  def show
    @quest = Quest.find(params[:id])
    authorize @quest
  end

end
