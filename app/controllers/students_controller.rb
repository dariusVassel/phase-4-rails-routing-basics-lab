class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order(grades: :desc)
        render json: students
    end 

    def highest_grade
        students = Student.order(grades: :desc).first
        render json: students
    end 
end
