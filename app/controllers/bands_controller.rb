class BandsController < ApplicationController
  before_action :set_band, only: [:show, :edit, :update, :destroy]
  

  # GET /bands
  # GET /bands.json
  def index
      @bands = Band.all 
  end

  # GET /bands/1
  # GET /bands/1.js
  def show
     respond_to do |format|         
        format.js
    end
  end

  # GET /bands/new
  def new
    @band = Band.new
    respond_to do |format|
       format.js
    end
  end

  # GET /bands/1/edit
  def edit
  end

  # POST /bands
  # POST /bands.js
  def create
    @band = Band.new(band_params)
    respond_to do |format|
      if @band.save        
        format.js
      else        
        format.js
      end
    end
  end

  # PATCH/PUT /bands/1
  # PATCH/PUT /bands/1.js
  def update
    @band = Band.find(params[:id])
      respond_to do |format|
        if @band.update(band_params)         
          format.js
        else       
          format.js
        end 
      end  
  end

  # DELETE /bands/1
  # DELETE /bands/1.js
  def destroy
    @band = Band.find(params[:id])
    @band.destroy
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_band
      @band = Band.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def band_params
      params.require(:band).permit(:name, :fanlevel, :description, :image)
    end
end