class RegistrationsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_event

  def create
    @registration = current_user.registrations.new(registration_params.merge({ event: @event }))
    @registration.set_total_price
    @registration.set_status
    @registration.save

    redirect_to @registration.event, notice: "Thank you for your registration!"
  end

  private

  def registration_params
    params.require(:registration).permit(:status, :guests_count, :total)
  end

  def load_event
    @event = Event.find(params[:event_id])
  end

end
