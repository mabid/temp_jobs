class OfficesController < ApplicationController
  def index
    @offices = Office.all
  end

  def show
    @office = Office.find(params[:id])
  end

  def temp_jobs
    @office = Office.find(params[:id])
  end
end
