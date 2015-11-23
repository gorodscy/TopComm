class AdsListsController < ApplicationController
  before_action :set_ads_list, only: [:show, :edit, :update, :destroy]

  # GET /ads_lists
  # GET /ads_lists.json
  def index
    @ads_lists = AdsList.all
  end

  # GET /ads_lists/1
  # GET /ads_lists/1.json
  def show
  end

  # GET /ads_lists/new
  def new
    @ads_list = AdsList.new
  end

  # GET /ads_lists/1/edit
  def edit
  end

  # POST /ads_lists
  # POST /ads_lists.json
  def create
    @ads_list = AdsList.new(ads_list_params)

    respond_to do |format|
      if @ads_list.save
        format.html { redirect_to @ads_list, notice: 'Ads list was successfully created.' }
        format.json { render :show, status: :created, location: @ads_list }
      else
        format.html { render :new }
        format.json { render json: @ads_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ads_lists/1
  # PATCH/PUT /ads_lists/1.json
  def update
    respond_to do |format|
      if @ads_list.update(ads_list_params)
        format.html { redirect_to @ads_list, notice: 'Ads list was successfully updated.' }
        format.json { render :show, status: :ok, location: @ads_list }
      else
        format.html { render :edit }
        format.json { render json: @ads_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ads_lists/1
  # DELETE /ads_lists/1.json
  def destroy
    @ads_list.destroy
    respond_to do |format|
      format.html { redirect_to ads_lists_url, notice: 'Ads list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ads_list
      @ads_list = AdsList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ads_list_params
      params.require(:ads_list).permit(:UserId, :total_profit)
    end
end
