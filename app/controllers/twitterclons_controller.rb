class TwitterclonsController < ApplicationController
  before_action :set_twitterclon, only: %i[ show edit update destroy ]

  # GET /twitterclons or /twitterclons.json
  def index
    if params[:query_text].present?
      twitterclons = Twitterclon.search_by_name(params[:query_text])
    else
      twitterclons = Twitterclon.all
    end

    @pagy, @twitterclons = pagy(twitterclons)
  end

  # GET /twitterclons/1 or /twitterclons/1.json
  def show
  end

  # GET /twitterclons/new
  def new
    @twitterclon = Twitterclon.new
  end

  # GET /twitterclons/1/edit
  def edit
  end

  # POST /twitterclons or /twitterclons.json
  def create
    @twitterclon = Twitterclon.new(twitterclon_params)

    respond_to do |format|
      if @twitterclon.save
        format.html { redirect_to twitterclon_url(@twitterclon), notice: "Twitterclon was successfully created." }
        format.json { render :show, status: :created, location: @twitterclon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @twitterclon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twitterclons/1 or /twitterclons/1.json
  def update
    respond_to do |format|
      if @twitterclon.update(twitterclon_params)
        format.html { redirect_to twitterclon_url(@twitterclon), notice: "Twitterclon was successfully updated." }
        format.json { render :show, status: :ok, location: @twitterclon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @twitterclon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twitterclons/1 or /twitterclons/1.json
  def destroy
    @twitterclon.destroy

    respond_to do |format|
      format.html { redirect_to twitterclons_url, notice: "Twitterclon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_twitterclon
    @twitterclon = Twitterclon.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def twitterclon_params
    params.require(:twitterclon).permit(:description, :username)
  end
end
