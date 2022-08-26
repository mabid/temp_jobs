class TempJobPostsController < ApplicationController
  def create
    TempJobPost.create(temp_job_post_params)
    redirect_back fallback_location: root_path, notice: "Created"
  end

  private
  def temp_job_post_params
    params.require(:temp_job_post).permit(:office_id, :when, :notes)
  end
end
