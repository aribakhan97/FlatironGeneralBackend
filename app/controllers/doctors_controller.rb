class DoctorsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index 
        doctors = Doctor.all
        render json: doctors
    end

    def show 
        doctor = Doctor.find(params[:id])
        render json: doctor
    end

    def getPatientList
        doctor = Doctor.find(params[:id])
        patientList = doctor.patients
        render json: patientList
    end 

    def login
        doctor = Doctor.find{|d| d.username === login_params[:username]}
        if(doctor.password === login_params[:password])
            render json: {isLoggedIn: true, doctor: doctor} 
        else 
            render json: {isLoggedIn: false} 
        end 
    end 

    private

    def login_params
        params.require(:doctor).permit!
    end 
end
