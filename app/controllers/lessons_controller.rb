class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[ show edit update destroy ]

  # GET /lessons or /lessons.json
  def index
    render json: Lesson.all
  end

  # GET /lessons/1 or /lessons/1.json
  def show
    render json: Lesson.find(params[:id])
  end

  # POST /lessons or /lessons.json
  def create
    Lesson.create(lesson_params)
  end

  # PATCH/PUT /lessons/1 or /lessons/1.json
  def update
    Lesson.find(params[:id]).update(lesson_params)
  end

  # DELETE /lessons/1 or /lessons/1.json
  def destroy
    Lesson.find(params[:id]).destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def lesson_params
      params.expect(lesson: [ :name ])
    end
end
