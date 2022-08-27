class ProfessionalsController < ApplicationController
  before_action :set_professional, except: %w(index)
  def index
    @professionals = Professional.all
  end

  def show
  end

  def temp_job_posts
    @temp_job_posts = TempJobPost.all
  end

  def invites
  end

  def applications
  end

  def proposals
  end

  private

  def set_professional
    @professional = Professional.find(params[:id])
  end
end
