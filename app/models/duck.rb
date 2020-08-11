class Duck < ApplicationRecord
    belongs_to :student
    validates :name, :description, presence: true


    def my_students
        Duck.all.select { |duck| duck.student_id == self.id }
    end
end
