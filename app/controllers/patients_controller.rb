class PatientsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        patient = Patient.create(patient_params)
            #name: patient_params.name, comments: patient_params.comments,
            # has_covid: isTrue(patient_params.has_covid), office_id: patient_params.office_id, age: Integer(patient_params.age),
            # gender: patient_params.gender, floor: patient_params.floor, reason_for_visit: patient_params.reason_for_visit)
        render json: patient
    end

    private

    def patient_params
        params.require(:patient).permit(:name, :profile,:comments,:has_covid,:office_id,:age,:gender,:floor,:reason_for_visit)
    end
    def isTrue?(obj)
        obj.to_s.downcase == "true"
    end

    
end
