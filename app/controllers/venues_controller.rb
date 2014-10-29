class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]

  # GET /venues
  # GET /venues.json
  def index
    @venues = Venue.all
  end

  #Search result of venues
  def search
    budget = 0
    if params[:budget_1] == 'on'
      budget = 1
    end
    if params[:budget_2] == 'on'
      budget = 2
    end
    if params[:budget_3] =='on'
      budget = 3
    end

    if params[:city] != '' && budget != 0
      @venues = Venue.where city: params[:city], budget: budget
    elsif params[:city] == ''
      @venues = Venue.where budget: budget
    elsif params[:city] != ''
      @venues = Venue.where city: params[:city]
    else
      @venues = Venue.all
    end
  end

  # GET /venues/1
  # GET /venues/1.json
  def show
    @venue = Venue.find(params[:id])

    @locationhash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      marker.latitude venue.latitude
      marker.longitude venue.longitude
    end
  end

  # GET /venues/new
  def new
    @venue = Venue.new
  end

  # GET /venues/1/edit
  def edit
  end

  # POST /venues
  # POST /venues.json
  def create
    @venue = Venue.new(venue_params)

    respond_to do |format|
      if @venue.save
        format.html { redirect_to @venue, notice: 'Venue was successfully created.' }
        format.json { render :show, status: :created, location: @venue }
      else
        format.html { render :new }
        format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venues/1
  # PATCH/PUT /venues/1.json
  def update
    respond_to do |format|
      if @venue.update(venue_params)
        format.html { redirect_to @venue, notice: 'Venue was successfully updated.' }
        format.json { render :show, status: :ok, location: @venue }
      else
        format.html { render :edit }
        format.json { render json: @venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venues/1
  # DELETE /venues/1.json
  def destroy
    @venue.destroy
    respond_to do |format|
      format.html { redirect_to venues_url, notice: 'Venue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue
      @venue = Venue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venue_params
      params.require(:venue).permit(:name, :phone_number, :address, :city, :state, :zip, :email, :website, :facebook, :twitter, :instagram, :space, :capacity, :available_parking, :changing_rooms, :restrooms, :electric_outlets, :indoors, :outdoors, :handicap, :coordinator, :budget, :picture)
    end
end
