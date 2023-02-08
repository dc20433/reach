class PrintsController < ApplicationController
  def pregi
    @p_regi = Regi.all
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
