class ExamsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        exam = Exam.create(exam_params)
        render json: exam
    end

    private

    def exam_params
        params.require(:exam).permit!
    end 
    
    
end
