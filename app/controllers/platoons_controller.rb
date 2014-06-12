class PlatoonsController < ApplicationController
  include ApplicationHelper
  before_action :set_platoon, only: [:show, :edit, :update, :destroy]
  before_action :check_admin_status, only: [:edit, :new, :destroy]

  # GET /platoons
  # GET /platoons.json
  def index
    @platoons = Platoon.all
  end

  # GET /platoons/1
  # GET /platoons/1.json
  def show
  end

  # GET /platoons/new
  def new
    @platoon = Platoon.new
  end

  # GET /platoons/1/edit
  def edit
  end

  # POST /platoons
  # POST /platoons.json
  def create
    @platoon = Platoon.new(platoon_params)

    respond_to do |format|
      if @platoon.save
        format.html { redirect_to @platoon, notice: 'Platoon was successfully created.' }
        format.json { render action: 'show', status: :created, location: @platoon }
      else
        format.html { render action: 'new' }
        format.json { render json: @platoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platoons/1
  # PATCH/PUT /platoons/1.json
  def update
    respond_to do |format|
      if @platoon.update(platoon_params)
        format.html { redirect_to @platoon, notice: 'Platoon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @platoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platoons/1
  # DELETE /platoons/1.json
  def destroy
    @platoon.destroy
    respond_to do |format|
      format.html { redirect_to platoons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platoon
      @platoon = Platoon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platoon_params
      params.require(:platoon).permit(:name, :insignia_url)
    end
end
