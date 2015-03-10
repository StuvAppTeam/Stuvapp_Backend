class MagesController < ApplicationController
  before_action :set_mage, only: [:show, :edit, :update, :destroy]

  # GET /mages
  # GET /mages.json
  def index
    @mages = Mage.all
  end

  # GET /mages/1
  # GET /mages/1.json
  def show
  end

  # GET /mages/new
  def new
    @mage = Mage.new
  end

  # GET /mages/1/edit
  def edit
  end

  # POST /mages
  # POST /mages.json
  def create
    @mage = Mage.new(mage_params)

    respond_to do |format|
      if @mage.save
        format.html { redirect_to @mage, notice: 'Mage was successfully created.' }
        format.json { render :show, status: :created, location: @mage }
      else
        format.html { render :new }
        format.json { render json: @mage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mages/1
  # PATCH/PUT /mages/1.json
  def update
    respond_to do |format|
      if @mage.update(mage_params)
        format.html { redirect_to @mage, notice: 'Mage was successfully updated.' }
        format.json { render :show, status: :ok, location: @mage }
      else
        format.html { render :edit }
        format.json { render json: @mage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mages/1
  # DELETE /mages/1.json
  def destroy
    @mage.destroy
    respond_to do |format|
      format.html { redirect_to mages_url, notice: 'Mage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mage
      @mage = Mage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mage_params
      params.require(:mage).permit(:title, :path)
    end
end
