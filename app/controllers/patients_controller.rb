class PatientsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        patient = Patient.create(patient_params)
        render json: patient
    end

    def destroy
        patient = Patient.find(params[:id])
        patient.destroy
        render json: patient
    end

    def update 
        patient = Patient.find(params[:id])
        patient.update(patient_params)
        render json: patient
    end 

    def show
        patient = Patient.find(params[:id])
        examList = patient.exams.map do |e| 
            physical = e.physical
            e.physical = physical.gsub! '=>', ':'
            vitals = e.vitals
            e.vitals = vitals.gsub! '=>', ':'
            e
        end
        render json: {patient: patient, exams:examList}
    end 
    
    private

    def patient_params
        params.require(:patient).permit!
    end 

    
end
