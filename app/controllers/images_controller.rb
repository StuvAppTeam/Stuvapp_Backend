class ImagesController < ApplicationController
  before_action :set_mage, only: [:show, :edit, :update, :destroy]

  # GET /Images
  # GET /Images.json
  def index
    @images = Image.all
  end

  # GET /Images/1
  # GET /Images/1.json
  def show
  end

  # GET /Images/new
  def new
    @image = Image.new
  end

  # GET /Images/1/edit
  def edit
  end

  # POST /Images
  # POST /Images.json
  def create
    @image = Image.new(mage_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Image was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Images/1
  # PATCH/PUT /Images/1.json
  def update
    respond_to do |format|
      if @image.update(mage_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Images/1
  # DELETE /Images/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to mages_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mage
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mage_params
      params.require(:image).permit(:title, :path)
    end
end
