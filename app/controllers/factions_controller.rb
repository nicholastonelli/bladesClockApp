class FactionsController < ApplicationController
  before_action :set_faction, only: %i[ show edit update destroy ]

  # GET /factions or /factions.json
  def index
    @factions = Faction.all
  end

  # GET /factions/1 or /factions/1.json
  def show
  end

  # GET /factions/new
  def new
    @faction = Faction.new
  end

  # GET /factions/1/edit
  def edit
  end

  # POST /factions or /factions.json
  def create
    @faction = Faction.new(faction_params)

    respond_to do |format|
      if @faction.save
        format.html { redirect_to faction_url(@faction), notice: "Faction was successfully created." }
        format.json { render :show, status: :created, location: @faction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @faction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factions/1 or /factions/1.json
  def update
    respond_to do |format|
      if @faction.update(faction_params)
        format.html { redirect_to faction_url(@faction), notice: "Faction was successfully updated." }
        format.json { render :show, status: :ok, location: @faction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @faction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factions/1 or /factions/1.json
  def destroy
    @faction.destroy

    respond_to do |format|
      format.html { redirect_to factions_url, notice: "Faction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faction
      @faction = Faction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def faction_params
      params.require(:faction).permit(:name, :description, :tier, :hold, :turf, :assets, :quirks, :situation)
    end
end
