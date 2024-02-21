class ApplicationController < ActionController::Base
  before_action :set_time_and_title

  def set_time_and_title
    @page_title = 'Hei hei'
    @time = Time.now
    @time_hh_mm = @time.strftime("%H:%M")
    @zone = @time.zone
  end
end
