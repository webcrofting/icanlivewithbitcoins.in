class BbusinessesController < ApplicationController
  before_action :set_bbusiness, only: [:show, :edit, :update, :destroy]

  # GET /bbusinesses
  # GET /bbusinesses.json
  def index
    @bbusinesses = Bbusiness.all
  end

  # GET /bbusinesses/1
  # GET /bbusinesses/1.json
  def show
  end

  # GET /bbusinesses/new
  def new
    @bbusiness = Bbusiness.new
  end

  # GET /bbusinesses/1/edit
  def edit
  end

  # POST /bbusinesses
  # POST /bbusinesses.json
  def create
    @bbusiness = Bbusiness.new(bbusiness_params)

    respond_to do |format|
      if @bbusiness.save
        format.html { redirect_to @bbusiness, notice: 'Bbusiness was successfully created.' }
        format.json { render :show, status: :created, location: @bbusiness }
      else
        format.html { render :new }
        format.json { render json: @bbusiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bbusinesses/1
  # PATCH/PUT /bbusinesses/1.json
  def update
    respond_to do |format|
      if @bbusiness.update(bbusiness_params)
        format.html { redirect_to @bbusiness, notice: 'Bbusiness was successfully updated.' }
        format.json { render :show, status: :ok, location: @bbusiness }
      else
        format.html { render :edit }
        format.json { render json: @bbusiness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bbusinesses/1
  # DELETE /bbusinesses/1.json
  def destroy
    @bbusiness.destroy
    respond_to do |format|
      format.html { redirect_to bbusinesses_url, notice: 'Bbusiness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bbusiness
      @bbusiness = Bbusiness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bbusiness_params
      params.require(:bbusiness).permit(:name, :address, :webpage, :string)
    end
end
