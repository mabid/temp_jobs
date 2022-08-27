class OfficesController < ApplicationController
  before_action :set_office, except: %w(index)

  def index
    @offices = Office.all
  end

  def show
  end

  def temp_jobs
  end

  def booking_proposals
  end

  def booking_requests
  end

  def post_temp_job
    @office.temp_jobs.find(params[:temp_job_id]).update(post: true)
    redirect_back fallback_location: root_path
  end

  private

  def set_office
    @office = Office.find(params[:id])
  end
end
