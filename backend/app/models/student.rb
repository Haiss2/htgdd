class Student < ApplicationRecord
    has_many :diems
    def progams
        return Program.includes(:courses).where(name: self.program).as_json(include: :courses )
    end 

    def total_tin_chi
        result = 0
        self.diems.includes(:course).where.not(mark: 'F').each do |t|
            result += t.course.volumn
        end
        result
    end

    def no_tin_chi
        result = 0
        self.diems.includes(:course).where(mark: 'F').each do |t|
            result += t.course.volumn
        end
        result
    end

    def gioi_han_tin_chi
        no = self.no_tin_chi
        if no > 27 
            return 0
        end
        if no > 16
            return 14 #min 8
        end
        if no > 8
            return 18 #min 10
        end
        return 24 #min 12
    end

    def calcCPA
        total_diem = 0
        total_tinchi = 0

        self.diems.each do |t|
            volumn = t.course.volumn
            total_tinchi += volumn
            total_diem += volumn * Ato4(t.mark)
        end
        self.cpa = total_diem/total_tinchi
        self.save!

    end
    def Ato4(x)
        case x
        when 'A', 'A+'
          return 4
        when 'B+'
          return 3.5
        when 'B'
          return 3
        when 'C+'
          return 2.5
        when 'C'
            return 2.0
        when 'D+'
            return 1.5
        when 'D'
            return 1
        else
          return 0
        end
    end

    def getCourseByMark(mark)
        course_ids = self.diems.includes(:course).where(mark: mark).pluck(:course_id)
        if mark != 'F'
            return Course.where(id: course_ids).where.not(volumn: 0)
        end
        Course.where(id: course_ids)
    end

    def courseThisSemester
        Course.where(program_id: self.current_semester)   
    end

    def courseNextSemester
        Course.where(program_id: self.current_semester + 1)
    end

end