# frozen_string_literal: true

class EventCrewsController < ProtectedController
  before_action :set_event_crew, only: [:show, :update, :destroy]
  before_action :set_event_id, only: [:getCrewsByEID]


  # GET /event_crews
  def index
    @event_crews = current_user.event_crews.all

    render json: @event_crews
  end

  # GET /event_crews/1
  def show
    render json: @event_crew
  end

  # POST /event_crews
  def create
    @event_crew = current_user.event_crews.build(event_crew_params)

    if @event_crew.save
      render json: @event_crew, status: :created, location: @event_crew
    else
      render json: @event_crew.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /event_crews/1
  def update
    if @event_crew.update(event_crew_params)
      render json: @event_crew
    else
      render json: @event_crew.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_crews/1
  def destroy
    @event_crew.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_event_crew
      @event_crew = current_user.event_crews.find(params[:id])
    end

    def set_event_id
      @event = current_user.event.find(params[:event_id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_crew_params
      params.require(:event_crew).permit(:event_id, :crew_id)
    end
end
