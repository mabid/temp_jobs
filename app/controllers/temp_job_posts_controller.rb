class TempJobPostsController < ApplicationController
  def create
    TempJobPost.create(temp_job_post_params)
    redirect_back fallback_location: root_path, notice: "Created"
  end

  def index
    # get state based temp job post here
    @temp_job_posts = TempJobPost.all
  end

  def update
    temp_job = TempJobPost.find params[:id]
    temp_job.update!(temp_job_post_params)
    redirect_back fallback_location: root_path
  end

  private

  def temp_job_post_params
    params.require(:temp_job_post).permit(:office_id, :when, :notes, :request)
  end
end
