class OverviewsController < ApplicationController
  def patient_list
    @patient_list = Regi.order("created_at, last_name, first_name, init, dob").all
  end

  def patient_info
  end
  
  def chart_name
    @chart_name = Chart.all
  end

  def chart_date
    @chart_date = Chart.all
  end

end
