class FireteamsController < ApplicationController
  include ApplicationHelper
  before_action :set_fireteam, only: [:show, :edit, :update, :destroy]
  before_action :check_admin_status, only: [:edit, :new, :destroy]

  # GET /fireteams
  # GET /fireteams.json
  def index
    @fireteams = Fireteam.all
  end

  # GET /fireteams/1
  # GET /fireteams/1.json
  def show
  end

  # GET /fireteams/new
  def new
    @fireteam = Fireteam.new
  end

  # GET /fireteams/1/edit
  def edit
  end

  # POST /fireteams
  # POST /fireteams.json
  def create
    @fireteam = Fireteam.new(fireteam_params)

    respond_to do |format|
      if @fireteam.save
        format.html { redirect_to @fireteam, notice: 'Fireteam was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fireteam }
      else
        format.html { render action: 'new' }
        format.json { render json: @fireteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fireteams/1
  # PATCH/PUT /fireteams/1.json
  def update
    respond_to do |format|
      if @fireteam.update(fireteam_params)
        format.html { redirect_to @fireteam, notice: 'Fireteam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fireteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fireteams/1
  # DELETE /fireteams/1.json
  def destroy
    @fireteam.destroy
    respond_to do |format|
      format.html { redirect_to fireteams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fireteam
      @fireteam = Fireteam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fireteam_params
      params.require(:fireteam).permit(:name, :insignia_url)
    end
end
