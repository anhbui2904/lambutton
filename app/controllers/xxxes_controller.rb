class XxxesController < ApplicationController
  before_action :set_xxx, only: [:show, :edit, :update, :destroy]

  # GET /xxxes
  # GET /xxxes.json
  def index
    @xxxes = Xxx.all
  end

  # GET /xxxes/1
  # GET /xxxes/1.json
  def show
  end

  # GET /xxxes/new
  def new
    @xxx = Xxx.new
  end

  # GET /xxxes/1/edit
  def edit
  end

  # POST /xxxes
  # POST /xxxes.json
  def create
    @xxx = Xxx.new(xxx_params)

    respond_to do |format|
      if @xxx.save
        format.html { redirect_to @xxx, notice: 'Xxx was successfully created.' }
        format.json { render :show, status: :created, location: @xxx }
      else
        format.html { render :new }
        format.json { render json: @xxx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xxxes/1
  # PATCH/PUT /xxxes/1.json
  def update
    respond_to do |format|
      if @xxx.update(xxx_params)
        format.html { redirect_to @xxx, notice: 'Xxx was successfully updated.' }
        format.json { render :show, status: :ok, location: @xxx }
      else
        format.html { render :edit }
        format.json { render json: @xxx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xxxes/1
  # DELETE /xxxes/1.json
  def destroy
    @xxx.destroy
    respond_to do |format|
      format.html { redirect_to xxxes_url, notice: 'Xxx was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xxx
      @xxx = Xxx.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xxx_params
      params.require(:xxx).permit(:image, :video, :title, :star, :description)
    end
end
