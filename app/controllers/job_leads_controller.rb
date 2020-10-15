class JobLeadsController < ApplicationController
  def index
    job_leads = JobLead.all
    render json: job_leads
  end

  def show
    job_lead = JobLead.find(params[:id])
    render json: job_lead
  end
end
