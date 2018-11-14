class AlkalinitiesController < ApplicationController
  before_action :set_alkalinity, only: [:show, :edit, :update, :destroy]

  # GET /alkalinities
  # GET /alkalinities.json
  def index
    @alkalinities = Alkalinity.all
  end

  # GET /alkalinities/1
  # GET /alkalinities/1.json
  def show
  end

  # GET /alkalinities/new
  def new
    @alkalinity = Alkalinity.new
  end

  # GET /alkalinities/1/edit
  def edit
  end

  # POST /alkalinities
  # POST /alkalinities.json
  def create
    @alkalinity = Alkalinity.new(alkalinity_params)

    respond_to do |format|
      if @alkalinity.save
        format.html { redirect_to @alkalinity, notice: 'Alkalinity was successfully created.' }
        format.json { render :show, status: :created, location: @alkalinity }
      else
        format.html { render :new }
        format.json { render json: @alkalinity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alkalinities/1
  # PATCH/PUT /alkalinities/1.json
  def update
    respond_to do |format|
      if @alkalinity.update(alkalinity_params)
        format.html { redirect_to @alkalinity, notice: 'Alkalinity was successfully updated.' }
        format.json { render :show, status: :ok, location: @alkalinity }
      else
        format.html { render :edit }
        format.json { render json: @alkalinity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alkalinities/1
  # DELETE /alkalinities/1.json
  def destroy
    @alkalinity.destroy
    respond_to do |format|
      format.html { redirect_to alkalinities_url, notice: 'Alkalinity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alkalinity
      @alkalinity = Alkalinity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alkalinity_params
      params.require(:alkalinity).permit(:dKH)
    end
end
