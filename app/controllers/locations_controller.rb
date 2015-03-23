class LocationsController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /Locations
  # GET /Locations.json
  def index
    @locations = current_user.business.locations.all
  end

  # GET /Locations/1
  # GET /Locations/1.json
  def show
  end

  # GET /Locations/new
  def new
    @location = Location.new
  end

  # GET /Locations/1/edit
  def edit
  end

  # POST /Locations
  # POST /Locations.json
  def create
    @location = current_user.business.locations.new(address_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Locations/1
  # PATCH/PUT /Locations/1.json
  def update
    respond_to do |format|
      if @location.update(address_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Locations/1
  # DELETE /Locations/1.json
  def destroy
    @location.destroy
    
    respond_to do |format|
      format.html { redirect_to addresses_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @location = current_user.business.locations.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:location).permit(:street, :city, :geographicalRegion, :country, :postal_code,
                                       :sunday_hours_open, :monday_hours_open, :tuesday_hours_open, :wednesday_hours_open, :thursday_hours_open, :friday_hours_open, :saturday_hours_open,
                                       :sunday_hours_close, :monday_hours_close, :tuesday_hours_close, :wednesday_hours_close, :thursday_hours_close, :friday_hours_close, :saturday_hours_close,
                                      :sunday_is_open, :monday_is_open, :tuesday_is_open, :wednesday_is_open, :thursday_is_open, :friday_is_open, :saturday_is_open,)
    end

end
