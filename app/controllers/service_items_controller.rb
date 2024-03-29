class ServiceItemsController < ApplicationController
  before_action :set_service_item, only: [:show, :edit, :update, :destroy]
  before_action :set_list_items, only: [:edit, :new]
  before_filter :authenticate_user!

  # GET /service_items
  # GET /service_items.json
  def index
    @service_items = current_user.business.service_items.all
  end

  # GET /service_items/1
  # GET /service_items/1.json
  def show
  end

  # GET /service_items/new
  def new
    @service_item = current_user.business.service_items.new

  end

  # GET /service_items/1/edit
  def edit
  end

  # POST /service_items
  # POST /service_items.json
  def create
    @service_item = current_user.business.service_items.new(service_item_params)

    respond_to do |format|
      if @service_item.save
        format.html { redirect_to @service_item, notice: 'Service Item was successfully created.' }
        format.json { render :show, status: :created, location: @service_item }
      else
        format.html { render :new }
        format.json { render json: @service_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_items/1
  # PATCH/PUT /service_items/1.json
  def update
    respond_to do |format|
      if @service_item.update(service_item_params)
        format.html { redirect_to @service_item, notice: 'Service Items was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_item }
      else
        format.html { render :edit }
        format.json { render json: @service_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_items/1
  # DELETE /service_items/1.json
  def destroy
    @service_item.destroy

    respond_to do |format|
      format.html { redirect_to service_items_url, notice: 'Service Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_service_item
    @service_item = current_user.business.service_items.find(params[:id])

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def service_item_params
    params.require(:service_item).permit(:title, :summary, :price, :service_list_id, :image)
  end

  def set_list_items
    @service_lists = current_user.business.service_lists.all;
  end

end
