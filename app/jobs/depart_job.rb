class DepartJob < ActiveJob::Base
  queue_as :serial_work

  def perform(departure)
    sleep(rand(10..15))
    departure.touch(:departed_at)
    PrivatePub.publish_to "/departures", {id: departure.id, departed_at: departure.departed_at.to_formatted_s(:rfc822)}
  end
end
