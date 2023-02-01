class PrintsController < ApplicationController
  def pregi
    @regis = Regi.all
  end

  def pchart_date
    @charts = Chart.all
  end
  
  def pchart_patient
    @charts = Chart.all
  end

  def ppatient
  end
end
