class MissionControl::Jobs::Queues::ClearsController < MissionControl::Jobs::ApplicationController
  include MissionControl::Jobs::QueueScoped

  def create
    @queue.clear

    redirect_back fallback_location: application_queues_url(@application)
  end
end
