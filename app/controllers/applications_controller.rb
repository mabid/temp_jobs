class ApplicationsController < ApplicationController
  def create
    Application.create(application_params)
    redirect_back fallback_location: root_path
  end

  private

  def application_params
    params.require(:application).permit(:professional_id, :temp_job_id)
  end
end
