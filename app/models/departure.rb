class Departure < ActiveRecord::Base
  after_create :schedule_departure

  private
  def schedule_departure
    DepartJob.perform_later(self)
  end
end
