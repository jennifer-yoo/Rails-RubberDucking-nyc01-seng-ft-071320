class Student < ApplicationRecord
validates :name, presence: true

    def my_ducks
        Duck.all.select { |duck| duck.student_id == self.id}
    end
end
