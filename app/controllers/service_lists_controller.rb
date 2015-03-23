class ServiceListsController < ApplicationController
  before_action :set_service_list, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /service_lists
  # GET /service_lists.json
  def index
    @service_lists = current_user.business.service_lists.all
  end

  # GET /service_lists/1
  # GET /service_lists/1.json
  def show
  end

  # GET /service_lists/new
  def new
    @service_list = current_user.business.service_lists.new
  end

  # GET /service_lists/1/edit
  def edit
  end

  # POST /service_lists
  # POST /service_lists.json
  def create
    @service_list = current_user.business.service_lists.new(service_list_params)

    respond_to do |format|
      if @service_list.save
        format.html { redirect_to @service_list, notice: 'Service list was successfully created.' }
        format.json { render :show, status: :created, location: @service_list }
      else
        format.html { render :new }
        format.json { render json: @service_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_lists/1
  # PATCH/PUT /service_lists/1.json
  def update
    respond_to do |format|
      if @service_list.update(service_list_params)
        format.html { redirect_to @service_list, notice: 'Service list was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_list }
      else
        format.html { render :edit }
        format.json { render json: @service_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_lists/1
  # DELETE /service_lists/1.json
  def destroy
    @service_list.destroy
    respond_to do |format|
      format.html { redirect_to service_lists_url, notice: 'Service list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_list
      @service_list = current_user.business.service_lists.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_list_params
      params.require(:service_list).permit(:title, :rank, :comment)
    end
end
