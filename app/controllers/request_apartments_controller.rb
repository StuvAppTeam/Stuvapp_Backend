class RequestApartmentsController < ApplicationController
  before_action :set_request_apartment, only: [:show, :edit, :update, :destroy]

  # GET /request_apartments
  # GET /request_apartments.json
  def index
    @request_apartments = RequestApartment.all
  end

  # GET /request_apartments/1
  # GET /request_apartments/1.json
  def show
  end

  # GET /request_apartments/new
  def new
    @request_apartment = RequestApartment.new
  end

  # GET /request_apartments/1/edit
  def edit
  end

  # POST /request_apartments
  # POST /request_apartments.json
  def create
    @request_apartment = RequestApartment.new(request_apartment_params)

    respond_to do |format|
      if @request_apartment.save
        format.html { redirect_to @request_apartment, notice: 'Request apartment was successfully created.' }
        format.json { render :show, status: :created, location: @request_apartment }
      else
        format.html { render :new }
        format.json { render json: @request_apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_apartments/1
  # PATCH/PUT /request_apartments/1.json
  def update
    respond_to do |format|
      if @request_apartment.update(request_apartment_params)
        format.html { redirect_to @request_apartment, notice: 'Request apartment was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_apartment }
      else
        format.html { render :edit }
        format.json { render json: @request_apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_apartments/1
  # DELETE /request_apartments/1.json
  def destroy
    @request_apartment.destroy
    respond_to do |format|
      format.html { redirect_to request_apartments_url, notice: 'Request apartment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_apartment
      @request_apartment = RequestApartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_apartment_params
      params.require(:request_apartment).permit(:title, :description, :totalPrice, :user_id, :furnished, :type, :size, :phase, :city, :zipcode)
    end
end
