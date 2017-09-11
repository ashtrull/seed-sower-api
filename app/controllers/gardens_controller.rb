# frozen_string_literal: true

class GardensController < OpenReadController
  before_action :set_garden, only: %i[show update destroy]

  # GET /gardens
  def index
    user = current_user
    @gardens = Garden.where('user_id=?', user.id)
    render json: @gardens
  end

  # GET /gardens/1
  def show
    @garden = Garden.find(params[:id])
    puts @garden
    render json: @garden
  end

  # def showgarden
  #   # Based this code on Coptia's resolution on Issue #772
  #   @user_garden = Garden.where('user_id = ?', current_user.id)
  #   render json: @user_garden
  # end
  # POST /gardens

  def create
    @garden = Garden.new(garden_params)
    if @garden.save
      render json: @garden, status: :created
    else
      render json: @garden.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gardens/1
  def update
    if @garden.update(garden_params)
      render json: @garden
    else
      render json: @garden.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gardens/1
  def destroy
    @garden.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_garden
    @garden = Garden.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def garden_params
    # params.require(:garden).permit(:id)
    params.require(:garden).permit(:user_id, :plant_id, :notes)
  end
end
