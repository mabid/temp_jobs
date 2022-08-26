class BookingRequestsController < ApplicationController
  def create
    BookingRequest.create(booking_request_params)
    redirect_back fallback_location: root_path
  end

  private
  def booking_request_params
    params.require(:booking_request).permit(:office_id, :when, :notes)
  end
end
