class Student < ApplicationRecord
    has_many :diems
    def progams
        return Program.where(name: self.program).as_json(include: :courses )
    end
end