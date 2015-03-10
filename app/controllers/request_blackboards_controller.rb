class RequestBlackboardsController < ApplicationController
  before_action :set_request_blackboard, only: [:show, :edit, :update, :destroy]

  # GET /request_blackboards
  # GET /request_blackboards.json
  def index
    @request_blackboards = RequestBlackboard.all
  end

  # GET /request_blackboards/1
  # GET /request_blackboards/1.json
  def show
  end

  # GET /request_blackboards/new
  def new
    @request_blackboard = RequestBlackboard.new
  end

  # GET /request_blackboards/1/edit
  def edit
  end

  # POST /request_blackboards
  # POST /request_blackboards.json
  def create
    @request_blackboard = RequestBlackboard.new(request_blackboard_params)

    respond_to do |format|
      if @request_blackboard.save
        format.html { redirect_to @request_blackboard, notice: 'Request blackboard was successfully created.' }
        format.json { render :show, status: :created, location: @request_blackboard }
      else
        format.html { render :new }
        format.json { render json: @request_blackboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_blackboards/1
  # PATCH/PUT /request_blackboards/1.json
  def update
    respond_to do |format|
      if @request_blackboard.update(request_blackboard_params)
        format.html { redirect_to @request_blackboard, notice: 'Request blackboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_blackboard }
      else
        format.html { render :edit }
        format.json { render json: @request_blackboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_blackboards/1
  # DELETE /request_blackboards/1.json
  def destroy
    @request_blackboard.destroy
    respond_to do |format|
      format.html { redirect_to request_blackboards_url, notice: 'Request blackboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_blackboard
      @request_blackboard = RequestBlackboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_blackboard_params
      params.require(:request_blackboard).permit(:title, :description, :totalPrice, :user_id, :category_id, :condition)
    end
end
