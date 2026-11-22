class StudentsController < ApplicationController
  # before_action :set_student, only: %i[ show edit update destroy ]

  # GET /students or /students.json
  def index
    render json: Student.all
  end

  # GET /students/1 or /students/1.json
  def show
    render json: Student.find(params[:id])
  end

  def update
    render json: Student.find(params[:id]).update(student_params)
  end

  # POST /students or /students.json
  def create
    Student.create(student_params)
  end


  # DELETE /students/1 or /students/1.json
  def destroy
    Student.find(params[:id]).delete
  end

  private
    # Only allow a list of trusted parameters through.
    def student_params
      params.expect(student: [ :name, :group_id ])
    end
end
