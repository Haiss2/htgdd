class  StudentsController < ApplicationController

    def show
        @student = Student.includes(diems: :course).find(params[:id])
        render json: @student.as_json(:methods => [:progams, :no_tin_chi, :total_tin_chi], :include => [:diems => {:include => [:course]}])
    end

    def login
        @student = Student.where(number: params[:email])
        if @student.length > 0
            render json: @student.first.as_json(:methods => [:progams, :no_tin_chi, :total_tin_chi], :include => [:diems => {:include => [:course]}])
        elsif
            render json: 'error', status: 401
        end
    end
end
