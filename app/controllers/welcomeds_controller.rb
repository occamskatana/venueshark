class WelcomedsController < ApplicationController
  before_action :set_welcomed, only: [:show, :edit, :update, :destroy]

  # GET /welcomeds
  # GET /welcomeds.json
  def index
    @welcomeds = Welcomed.all
  end

  # GET /welcomeds/1
  # GET /welcomeds/1.json
  def show
  end

  # GET /welcomeds/new
  def new
    @welcomed = Welcomed.new
  end

  # GET /welcomeds/1/edit
  def edit
  end

  # POST /welcomeds
  # POST /welcomeds.json
  def create
    @welcomed = Welcomed.new(welcomed_params)

    respond_to do |format|
      if @welcomed.save
        format.html { redirect_to @welcomed, notice: 'Welcomed was successfully created.' }
        format.json { render :show, status: :created, location: @welcomed }
      else
        format.html { render :new }
        format.json { render json: @welcomed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /welcomeds/1
  # PATCH/PUT /welcomeds/1.json
  def update
    respond_to do |format|
      if @welcomed.update(welcomed_params)
        format.html { redirect_to @welcomed, notice: 'Welcomed was successfully updated.' }
        format.json { render :show, status: :ok, location: @welcomed }
      else
        format.html { render :edit }
        format.json { render json: @welcomed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /welcomeds/1
  # DELETE /welcomeds/1.json
  def destroy
    @welcomed.destroy
    respond_to do |format|
      format.html { redirect_to welcomeds_url, notice: 'Welcomed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_welcomed
      @welcomed = Welcomed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def welcomed_params
      params.fetch(:welcomed, {})
    end
end
