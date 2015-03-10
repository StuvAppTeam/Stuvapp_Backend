class OfferApartmentsController < ApplicationController
  before_action :set_offer_apartment, only: [:show, :edit, :update, :destroy]

  # GET /offer_apartments
  # GET /offer_apartments.json
  def index
    @offer_apartments = OfferApartment.all
  end

  # GET /offer_apartments/1
  # GET /offer_apartments/1.json
  def show
  end

  # GET /offer_apartments/new
  def new
    @offer_apartment = OfferApartment.new
  end

  # GET /offer_apartments/1/edit
  def edit
  end

  # POST /offer_apartments
  # POST /offer_apartments.json
  def create
    @offer_apartment = OfferApartment.new(offer_apartment_params)

    respond_to do |format|
      if @offer_apartment.save
        format.html { redirect_to @offer_apartment, notice: 'Offer apartment was successfully created.' }
        format.json { render :show, status: :created, location: @offer_apartment }
      else
        format.html { render :new }
        format.json { render json: @offer_apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offer_apartments/1
  # PATCH/PUT /offer_apartments/1.json
  def update
    respond_to do |format|
      if @offer_apartment.update(offer_apartment_params)
        format.html { redirect_to @offer_apartment, notice: 'Offer apartment was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer_apartment }
      else
        format.html { render :edit }
        format.json { render json: @offer_apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_apartments/1
  # DELETE /offer_apartments/1.json
  def destroy
    @offer_apartment.destroy
    respond_to do |format|
      format.html { redirect_to offer_apartments_url, notice: 'Offer apartment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer_apartment
      @offer_apartment = OfferApartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_apartment_params
      params.require(:offer_apartment).permit(:title, :description, :totalPrice, :image_id, :street, :city, :zipcode, :user_id, :size, :rent, :additionalCost, :phase, :deposit, :type, :moveIn, :furnished, :internet, :other, :parking, :rooms, :smoking)
    end
end
