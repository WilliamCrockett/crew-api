# frozen_string_literal: true

require 'pry'

class CrewsController < ProtectedController
  before_action :set_crew, only: [:show, :update, :destroy]

  # GET /crews
  def index
    @crews = current_user.crews.all # so that only the current users crew are returned
    # @crews = Crew.all

    render json: @crews
  end

  # GET /crews/1
  def show
    render json: @crew
  end

  # POST /crews
  def create
    @crew = current_user.crews.build(crew_params)

    if @crew.save
      render json: @crew, status: :created
    else
      render json: @crew.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /crews/1
  def update
    if @crew.update(crew_params)
      render json: @crew
    else
      render json: @crew.errors, status: :unprocessable_entity
    end
  end

  # DELETE /crews/1
  def destroy
    @crew.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_crew
    @crew = current_user.crews.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def crew_params
    params.require(:crew).permit(:full_name, :sas_number, :email_address, :cell_number, :next_of_kin, :nok_cell_num, :shirt_size)
  end
end
