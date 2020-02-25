class ParticipationsController < ApplicationController
  def index
    # @participation = Participation.all
    @participations = policy_scope(Participation) # All bookings for this moissonneuse
    @level_1_participations = policy_scope(Participation).past
    @level_2_participations = policy_scope(Participation).current
    @level_3_participations = policy_scope(Participation).future
  end
end
