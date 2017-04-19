class PylonsController < ApplicationController
  before_action :set_pylon, only: [:show, :update, :destroy]

  # GET /pylons
  def index
    @pylons = Pylon.of_followed_users(current_user.following)
    @pylons = Pylon.for_user(current_user)

    render json: @pylons
  end

  # GET /pylons/1
  def show
    render json: @pylon
  end

  # POST /pylons
  def create

    @listing = Listing.find_by(google_place_id: listing_params[:google_place_id])
    @listing = Listing.create(listing_params) unless @listing

    @pylon = Pylon.new(pylon_params)
    @pylon.user = current_user
    @pylon.listing = @listing

    if @pylon.save
      render json: @pylon, status: :created, location: @pylon
    else
      render json: @pylon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pylons/1
  def update

    if @pylon.update(pylon_params)
      render json: @pylon
    else
      render json: @pylon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pylons/1
  def destroy
    @pylon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pylon
      @pylon = Pylon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pylon_params
      params.require(:pylon).permit(:category, :comment)
    end

    def listing_params
      params.require(:pylon).permit(:type_of_listing, :address, :website, :tel, :lat, :lng, :exp_date, :google_place_id, :name)
    end
end
