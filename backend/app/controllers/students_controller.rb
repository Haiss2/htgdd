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

    def help
        @student = Student.includes(diems: :course).find(params[:id])
        if @student.no_tin_chi <= 8
            render json: restrick(giveNote(@student.getCourseByMark('F'), 'Tạch môn phải học lại!') + 
            giveNote(@student.courseThisSemester, 'Chương trình học kỳ tiếp theo!') + 
            giveNote(@student.getCourseByMark('D'), 'Điểm D thì nên học cải thiện!') +
            giveNote(@student.getCourseByMark('D+'), 'Điểm D+ cũng nên học cải thiện!') +
            giveNote(@student.courseNextSemester, 'Học trước chương trình!'), @student.gioi_han_tin_chi)
            return
        end

        if @student.no_tin_chi <= 16
            render json: restrick(giveNote(@student.getCourseByMark('F'), 'Tạch môn phải học lại!') + giveNote(@student.courseThisSemester, 'Chương trình học kỳ tiếp theo!'), @student.gioi_han_tin_chi)
            return
        end

        if @student.no_tin_chi <= 27
            render json: restrick(giveNote(@student.getCourseByMark('F'), 'Tạch môn phải học lại!'), @student.gioi_han_tin_chi)
            return
        end

        render json: []
        
    end

    private
    def giveNote(courses, note)
        courses.each do |t|
            t.info["note"] = note
        end
        return courses
    end

    def restrick(records, limit)
        x = []
        check = 0
        records.each do |t|
            if check + t.volumn < limit
                check += t.volumn
                x.push(t)
            end
        end
        return x
    end
end
