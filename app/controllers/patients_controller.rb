class PatientsController < ApplicationController

    def create
        patient = Patient.create(patient_params)
        render json: patient
    end

    private

    def patient_params
        params.require(:patient).permit!
    end
    
end
