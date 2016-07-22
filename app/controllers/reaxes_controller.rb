class ReaxesController < ApplicationController
  before_action :set_reax, only: [:show, :edit, :update, :destroy]

  # GET /reaxes
  # GET /reaxes.json
  def index
    @reaxes = Reax.all
  end

  # GET /reaxes/1
  # GET /reaxes/1.json
  def show
  end

  # GET /reaxes/new
  def new
    @reax = Reax.new
  end

  # GET /reaxes/1/edit
  def edit
  end

  # POST /reaxes
  # POST /reaxes.json
  def create
    @reax = Reax.new(reax_params)

    respond_to do |format|
      if @reax.save
        format.html { redirect_to @reax, notice: 'Reax was successfully created.' }
        format.json { render :show, status: :created, location: @reax }
      else
        format.html { render :new }
        format.json { render json: @reax.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reaxes/1
  # PATCH/PUT /reaxes/1.json
  def update
    respond_to do |format|
      if @reax.update(reax_params)
        format.html { redirect_to @reax, notice: 'Reax was successfully updated.' }
        format.json { render :show, status: :ok, location: @reax }
      else
        format.html { render :edit }
        format.json { render json: @reax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reaxes/1
  # DELETE /reaxes/1.json
  def destroy
    @reax.destroy
    respond_to do |format|
      format.html { redirect_to reaxes_url, notice: 'Reax was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reax
      @reax = Reax.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reax_params
      params.require(:reax).permit(:user, :username, :post, :submission, :upvotes)
    end
end
