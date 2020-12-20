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
        return result
    end

    def no_tin_chi
        result = 0
        self.diems.includes(:course).where(mark: 'F').each do |t|
            result += t.course.volumn
        end
        return result
    end
end