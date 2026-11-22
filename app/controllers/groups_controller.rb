class GroupsController < ApplicationController
  before_action :set_group, only: %i[ show edit update destroy ]

  # GET /groups or /groups.json
  def index
    render json: Group.all
  end

  def show
    render json: Group.find(params[:id])
  end
  # GET /groups/new
  def new
    render json: Group.create(group_params)
  end

  # POST /groups or /groups.json
  def create
    render json: Group.create(group_params)
  end

  # PATCH/PUT /groups/1 or /groups/1.json
  def update
    render json: Group.find(params[:id]).update(group_params)
  end

  # DELETE /groups/1 or /groups/1.json
  def destroy
    render json: Group.find(params[:id]).destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def group_params
      params.expect(group: [ :name ])
    end
end
