class  StudentsController < ApplicationController

    def show
        @student = Student.find(params[:id])
        render json: @student.as_json(methods: :progams, include: :diems)
    end

    def login
        @student = Student.where(number: params[:email])
        if @student.length > 0
            render json: @student.first.as_json(methods: :progams, include: :diems)
        elsif
            render json: 'error', status: 401
        end
    end
end
