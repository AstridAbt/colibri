class ParticipationsController < ApplicationController
  def index
    # @participations = Participation.all
    @participations = policy_scope(Participation) # All bookings for this moissonneuse
    @past_participations = policy_scope(Participation).past
    @current_participations = policy_scope(Participation).current
  end
end
