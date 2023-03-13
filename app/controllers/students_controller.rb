class StudentsController < ApplicationController
    
    def index
        students = Student.all
        render json: students
    end

    def grades
        order_by_grade = Student.order('grade DESC')
        render json: order_by_grade
    end

    def highest_grade
        highest_grade = Student.order('grade DESC').first
        render json: highest_grade
    end

end
