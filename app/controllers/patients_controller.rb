class PatientsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_regi
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET regis/1/patients
  def index
    @patients = @regi.patients
  end

  # GET regis/1/patients/1
  def show
  end

  # GET regis/1/patients/new
  def new
    if defined?(Patient.where(regi_id: params[:regi_id]).last.id)
      @patient = @regi.patients.order('v_date ASC').last.dup
    else
      @patient = @regi.patients.build
    end
  end

  # GET regis/1/patients/1/edit
  def edit
  end

  # POST regis/1/patients
  def create
    @patient = @regi.patients.build(patient_params)

    if @patient.save
      redirect_to regi_patients_path(@regi), notice:'Patient Record created...'
    else
      render action: 'new'
    end
  end

  # PUT regis/1/patients/1
  def update
    if @patient.update(patient_params)
      redirect_to regi_patients_path(@regi), notice:'Patient Record updated...'
    else
      render action: 'edit'
    end
  end

  # DELETE regis/1/patients/1
  def destroy
    @patient.destroy
    redirect_to regi_patients_path(@regi), notice: "Record deleted..."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regi
      @regi = Regi.find(params[:regi_id])
    end

    def set_patient
      @patient = @regi.patients.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patient_params
      params.require(:patient).permit(:name, :v_date, :m_stat, :weight, :height, :street, :city, :state, :zip, :cell, :home, :work, :email, :referred, :com1, :com2, :com3, :d_onset, :pain_scale, :d_lost, :d_restd, :c_onset, :better, :worse, :o_drs, :o_drs_when, :pcp_name, :hosp, :h_when, :diag_given, :diag_where, :aq_b4, :aqrist, :aq_where, :o_dis, :inj_surg, :med_taken, :alcohol, :tobacco, :last_prd, :preg, :preg_wks, :regi_id, di_list:[])
    end
end
