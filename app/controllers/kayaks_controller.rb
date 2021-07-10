class KayaksController < ApplicationController
  before_action :set_kayak, only: %i[ show edit update destroy ]


  # GET /kayaks or /kayaks.json
  def index
    @kayaks = Kayak.all
  end

  # GET /kayaks/1 or /kayaks/1.json
  def show
    
  end

  # GET /kayaks/new
  def new
    @kayak = Kayak.new
  end

  # GET /kayaks/1/edit
  def edit
  end

  # POST /kayaks or /kayaks.json
  def create
    @kayak = Kayak.new(kayak_params)
    @kayak.customer_id = current_customer.id

    respond_to do |format|
      if @kayak.save
        format.html { redirect_to @kayak, notice: "Kayak was successfully created." }
        format.json { render :show, status: :created, location: @kayak }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kayak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kayaks/1 or /kayaks/1.json
  def update
    respond_to do |format|
      if @kayak.update(kayak_params)
        format.html { redirect_to @kayak, notice: "Kayak was successfully updated." }
        format.json { render :show, status: :ok, location: @kayak }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kayak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kayaks/1 or /kayaks/1.json
  def destroy
    @kayak.destroy
    respond_to do |format|
      format.html { redirect_to kayaks_url, notice: "Kayak was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kayak
      @kayak = Kayak.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kayak_params
      params.require(:kayak).permit(:name, :location, :capacity, :price)
    end
end
